#!/usr/bin/env python
import rospy
import math
from nav_msgs.msg import Odometry
from sensor_msgs.msg import LaserScan
import numpy as np
import time
from std_srvs.srv import Empty



class Lidar_Subscriber:
    def __init__(self):

        self.angle_list = []
        self.dist_list = []

        self.x = 0
        self.y = 0
        self.yaw = 0
        self.task = 0


        rospy.Subscriber('/camera/odom/sample',Odometry,self.t265callback,queue_size=10)
        rospy.Subscriber('/scan',LaserScan,self.callback,queue_size=1)
        self.stop = rospy.ServiceProxy("/stop_motor",Empty)

    
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

    
    def t265callback(self,msg):
        ow = msg.pose.pose.orientation.w
        ox = msg.pose.pose.orientation.x
        oy = msg.pose.pose.orientation.y
        oz = msg.pose.pose.orientation.z
        self.yaw = self.quaternion_to_euler_angle(np.array([ow, ox, oy, oz]))
    
        self.x = msg.pose.pose.position.x*100
        self.y = msg.pose.pose.position.y*100
    

    def callback(self,msg):
        if self.task == 0:
            dist = msg.ranges[109:973]
            for i in range(len(dist)):
                if dist[i] > 0 and dist[i]<1:
                    angle = (i+109)*msg.angle_increment
                    self.angle_list.append(angle)
                    self.dist_list.append(dist[i]*100)
                    #print(angle,dist[i])
            if len(self.angle_list)>0:
                self.task += 1

        if self.task == 1:
            self.stop()
            angle_mean = sum(self.angle_list)/len(self.angle_list)
            dist_mean = sum(self.dist_list)/len(self.dist_list)

            lidar_x,lidar_y = self.Polar_to_Rectangular(angle_mean-np.pi/2,dist_mean)
            

            new_x, new_y = self.rotate(lidar_x, lidar_y, self.yaw)
            print(new_x,new_y)
            new_x += self.x
            new_y += self.y
            print(new_x,new_y)

            self.task += 1
            
        if self.task == 2:
            pass







if __name__ == '__main__':
    rospy.init_node('test') 
    lidar = Lidar_Subscriber()
    rospy.spin()

