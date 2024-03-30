#!/usr/bin/env python3
import rospy
import serial
from task.srv import Uart,UartResponse 
from std_msgs.msg import String

class SendMsg:
    def __init__(self) -> None:
        self.ser2msp = serial.Serial('/dev/ttyS1',9600,timeout=0.01)
        self.ser2screen = serial.Serial('/dev/ttyS3',57600,timeout=0.01)
        send2msp = rospy.Service('send2msp', Uart, self.send_msp)
        send2screen = rospy.Service('send2screen', Uart, self.send_screen)
        self.pub = rospy.Publisher('get_mspmsg', String, queue_size=1)


    def send_msp(self,req):
        self.ser2msp.write(req.send.encode('utf-8'))
        print("send to msp:"+req.send)
        return UartResponse(req.send)


    def send_screen(self,req):
        self.ser2screen.write(req.send.encode('utf-8'))
        print("send to screen:"+req.send)
        return UartResponse(req.send)


    def pubmsg(self,timer):
        msg = self.ser2msp.readline().decode('utf-8')
        if msg != '':
            self.pub.publish(msg)

if __name__ == "__main__":
    rospy.init_node('uartmsg',anonymous=True)
    sendmsg = SendMsg()
    rospy.Timer(rospy.Duration(1.0 / 100), sendmsg.pubmsg)
    rospy.spin()