#!/usr/bin/env python
import rospy
from task.srv import Uart,UartResponse 
from std_msgs.msg import String
import socket


class Socketclient:
    def __init__(self) -> None:
        self.client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.client.connect(('192.168.31.171', 2334))
        send2uav = rospy.Service('send2uav', Uart, self.send_uav)
        self.broad = rospy.Publisher('get_msg', String, queue_size=1)


    def send_uav(self,req):
        self.client.send(req.send.encode('utf-8'))
        print("send :"+req.send)
        return UartResponse(req.send)

    def recive(self,timer):
        data = self.client.recv(1024).decode('utf-8')
        self.broad.publish(data)

if __name__ == "__main__":
    rospy.init_node('uartmsg',anonymous=True)
    sendmsg = Socketclient()
    rospy.Timer(rospy.Duration(1.0 / 100), sendmsg.recive)
    rospy.spin()