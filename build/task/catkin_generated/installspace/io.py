#!/usr/bin/env python3
import rospy
import os
from task.srv import Io,IoResponse 
from periphery import GPIO


class Ioctl:
    def __init__(self) -> None:
        os.system("sudo chmod 777 /dev/gpio*")
        self.left_laser = GPIO("/dev/gpiochip1", 22, "out")
        self.left_laser.write(True)
        self.right_laser = GPIO("/dev/gpiochip4", 11, "out")
        self.right_laser.write(True)
        left_laser = rospy.Service('left_laser', Io, self.handleleftlaser)
        right_laser = rospy.Service('right_laser', Io, self.handlerightlaser)

    def handleleftlaser(self,req):
        self.left_laser.write(req.set_state)
        print("left_laser: "+str(req.set_state))
        return IoResponse(req.set_state)

    def handlerightlaser(self,req):
        self.right_laser.write(req.set_state)
        print("right_laser: "+str(req.set_state))
        return IoResponse(req.set_state)


if __name__ == "__main__":
    rospy.init_node('ioctl')
    print("ioctl ready")
    Ioctl()
    rospy.spin()