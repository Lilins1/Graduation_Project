#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from std_msgs.msg import String
from nav_msgs.msg import Odometry
from std_srvs.srv import Empty
from task.srv import *
import numpy as np
import time
import math

class Lidar_Subscriber:
    def __init__(self):
        self.leftpwm = rospy.ServiceProxy('/pwm_left', Pwm)
        self.rightpwm = rospy.ServiceProxy('/pwm_right', Pwm)
        self.leftlaser = rospy.ServiceProxy('/left_laser', Io)
        self.rightlaser = rospy.ServiceProxy('/right_laser', Io)
        self.start = rospy.ServiceProxy("/start_motor",Empty)
        self.send2msp = rospy.ServiceProxy('/send2msp', Uart)
        self.angle_list = []
        self.dist_list = []

        self.task = 0
        self.orient = False #fasle左 true右

        self.start_time = 0
        self.x = 0
        self.y = 0
        self.yaw = 0
        rospy.Subscriber('/scan',LaserScan,self.callback,queue_size=1)
        rospy.Subscriber('get_mspmsg',String,self.msgcallback,queue_size=1)
        rospy.Subscriber('/camera/odom/sample',Odometry,self.t265callback,queue_size=10)

    def rotate(self,x, y, angle):
        # 将角度转换为弧度
        rad_angle = math.radians(angle)
        # 计算旋转后的坐标
        new_x = x * math.cos(rad_angle) - y * math.sin(rad_angle)
        new_y = x * math.sin(rad_angle) + y * math.cos(rad_angle)
        return new_x, new_y

    def Polar_to_Rectangular(self,theta,r):
        x = r * np.cos(theta)
        y = r * np.sin(theta)
        return x,y

    def quaternion_to_euler_angle(self,quaternion):
        q = quaternion / np.linalg.norm(quaternion)
        w = q[0]
        x = q[1]
        y = q[2]
        z = q[3]
        pitch = math.degrees(math.asin(2 * (w * x - y * z)))
        return pitch
        
    def auto_left_oscillate(self):
        duty = 0.91
        for i in range(20):
            duty += 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty += 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty += 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)        
        for i in range(20):
            duty += 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.leftpwm(duty)
            time.sleep(0.05)

    def auto_right_oscillate(self):
        duty = 0.91
        for i in range(20):
            duty += 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty += 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
            
        for i in range(20):
            duty += 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)

        for i in range(20):
            duty += 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)
        for i in range(20):
            duty -= 0.0015
            self.rightpwm(duty)
            time.sleep(0.05)


    def callback(self,msg):
        print(self.task)
        # 左边障碍物
        if self.orient == False:
            if self.task>0 and self.task < 8:
                dist = msg.ranges[973:1838]
                for i in range(len(dist)):
                    if dist[i] > 0 and dist[i]<1:
                        angle = (i+973)*msg.angle_increment
                        self.angle_list.append(angle)
                        self.dist_list.append(dist[i]*100)
                if len(self.angle_list)>0:
                    self.task += 1
                else:
                    self.now_time = time.time()
                    if (self.now_time-self.start_time>15):
                        send = 'S050000000000E'
                        self.send2msp(send)
                        self.task = 9
            if self.task == 8:
                angle_mean = sum(self.angle_list)/len(self.angle_list)
                dist_mean = sum(self.dist_list)/len(self.dist_list)

                lidar_x,lidar_y = self.Polar_to_Rectangular(angle_mean-np.pi/2,dist_mean)
                

                new_x, new_y = self.rotate(lidar_x, lidar_y, self.yaw)

                new_x += self.x
                new_y += self.y
                
                new_x = min(new_x,430)
                new_y = min(new_y,350)

                x_1 = str("{:.2f}".format(round(new_x, 2))).replace('.','')
                y_1 = str("{:.2f}".format(round(new_y, 2))).replace('.','')
                send = 'S05'+x_1.zfill(5)+y_1.zfill(5)+'E'
                self.send2msp(send)
                self.task +=1

            if self.task == 20:
                self.leftlaser(False)
                self.auto_left_oscillate()
                self.leftlaser(True)
                self.task += 1
            if self.task == 21:
                self.send2msp("S031E")
                self.task +=1
            if self.task == 22:
                pass



        # 右边障碍物
        else:
            if self.task>0 and self.task <8:
                dist = msg.ranges[109:973]
                for i in range(len(dist)):
                    if dist[i] > 0 and dist[i]<1:
                        angle = (i+109)*msg.angle_increment
                        self.angle_list.append(angle)
                        self.dist_list.append(dist[i]*100)
                if len(self.angle_list)>0:
                    self.task +=1
                else:
                    self.now_time = time.time()
                    if (self.now_time-self.start_time>15):
                        send = 'S050000000000E'
                        self.send2msp(send)
                        self.task = 9
            if self.task == 8:
                angle_mean = sum(self.angle_list)/len(self.angle_list)
                dist_mean = sum(self.dist_list)/len(self.dist_list)

                lidar_x,lidar_y = self.Polar_to_Rectangular(angle_mean-np.pi/2,dist_mean)
                
                new_x, new_y = self.rotate(lidar_x, lidar_y, self.yaw)

                new_x += self.x
                new_y += self.y

                new_x = min(new_x,430)
                new_y = min(new_y,350)
                
                x_1 = str("{:.2f}".format(round(new_x, 2))).replace('.','')
                y_1 = str("{:.2f}".format(round(new_y, 2))).replace('.','')
                send = 'S05'+x_1.zfill(5)+y_1.zfill(5)+'E'
                self.send2msp(send)
                self.task +=1

            if self.task == 20:
                self.rightlaser(False)
                self.auto_right_oscillate()
                self.rightlaser(True)
                self.task += 1
            if self.task == 21:
                self.send2msp("S031E")               
                self.task +=1
            if self.task == 22:
                pass


    def msgcallback(self,msg):
        print(msg)
        if msg.data == "S020E":
            self.orient = False
            self.task = 1
            self.start_time = time.time()
            self.start()
            
        elif msg.data == "S021E":
            self.orient = True
            self.task = 1
            self.start_time = time.time()
            self.start()

        elif msg.data == "S041E":
            self.task = 20

    def t265callback(self,msg):
        self.x = (msg.pose.pose.position.x+1.35)*100
        self.y = (msg.pose.pose.position.y+0.21)*100
        ow = msg.pose.pose.orientation.w
        ox = msg.pose.pose.orientation.x
        oy = msg.pose.pose.orientation.y
        oz = msg.pose.pose.orientation.z
        self.yaw = self.quaternion_to_euler_angle(np.array([ow, ox, oy, oz]))
        '''dist = msg.ranges[109:1838]
        for i in range(len(dist)):
            if dist[i] > 0 and dist[i]<0.5:
                angle = (i+109)*msg.angle_increment/np.pi*180
                print("angle: ",angle,"dist",dist[i]*100)'''




if __name__ == '__main__':
    rospy.init_node('lidar') 
    lidar = Lidar_Subscriber()
    rospy.spin()


#left
    # 0.923 for 1.5pi
    # 0.89  for pi 
    # 0.958 for 2pi 

#right
    # 0.000 for 0
    # 0.000 for 0.5pi
    # 0.000 for pi