#!/usr/bin/env python
import rospy
from nav_msgs.msg import Odometry
import serial
import os
from periphery import GPIO
from task.srv import *
import math
import time
import numpy as np


class T265_Subscriber:
    def __init__(self):
        self.ser = serial.Serial('/dev/ttyS0',57600,timeout=0.01)
        self.loc = list('S+00000+00000+00000+00000+00000E')
        rospy.Subscriber('/camera/odom/sample',Odometry,self.callback,queue_size=4)
    
    def quaternion_to_euler_angle(self,quaternion):
        q = quaternion / np.linalg.norm(quaternion)
        w = q[0]
        x = q[1]
        y = q[2]
        z = q[3]
        pitch = math.degrees(math.asin(2 * (w * x - y * z)))
        return pitch


    def callback(self,msg):
        x = str("{:.4f}".format(float(msg.pose.pose.position.x+1.35))).replace('.','')
        y = str("{:.4f}".format(float(msg.pose.pose.position.y+0.21))).replace('.','')

        angle_x = msg.twist.twist.angular.x*3276
        angle_x = min(angle_x,32767)
        angle_x = max(angle_x,-32767)

        linear_x = int(msg.twist.twist.linear.y*16384)
        linear_x = min(linear_x,32767)
        linear_x = max(linear_x,-32767)

        ow = msg.pose.pose.orientation.w
        ox = msg.pose.pose.orientation.x
        oy = msg.pose.pose.orientation.y
        oz = msg.pose.pose.orientation.z
        yaw = int(self.quaternion_to_euler_angle(np.array([ow, ox, oy, oz]))*182.04444)
        yaw = min(yaw,16383)
        yaw = max(yaw,-16383)

        if len(x) == 6:
            self.loc[1:7] = x
        else:
            self.loc[1] = '+'
            self.loc[2:7] = x
        if len(y) == 6:
            self.loc[7:13] = y
        else:
            self.loc[7] = '+'
            self.loc[8:13] = y

        if (yaw) < 0:
            self.loc[13] = '-'
        else:
            self.loc[13] = '+'
        yaw = str(round(abs(yaw)))
        self.loc[14:19] = yaw.zfill(5)
        if (angle_x) <0:
            self.loc[19] = '-'
        else:
            self.loc[19] = '+'
        angle_x = str(round(abs(angle_x)))
        self.loc[20:25] = angle_x.zfill(5)
        if (linear_x) <0:
            self.loc[25] = '-'
        else:
            self.loc[25] = '+'
        linear_x = str(round(abs(linear_x)))
        self.loc[26:-1] = linear_x.zfill(5)



        self.send = ''.join(self.loc)
        self.ser.write(self.send.encode('utf-8'))
        print(self.send)
        

if __name__ == '__main__':

    rospy.wait_for_service('send2uav')
    sendmsg = rospy.ServiceProxy('send2uav', Uart)

    #wait_startkey
    os.system("sudo chmod 777 /dev/gpio*")
    start_flag = GPIO("/dev/gpiochip1",20,"in")

    value = start_flag.read()
    while value:
        value = start_flag.read()
        

    sendmsg('S081001E')

    #send t265
    rospy.init_node('t265sending') 
    sending = T265_Subscriber()
    rospy.spin()


