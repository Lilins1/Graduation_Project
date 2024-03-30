#!/usr/bin/env python3
import rospy
import os
from task.srv import Pwm,PwmResponse 

class Pwmctl:
    def __init__(self) -> None:
        self.frequency = 50
        self.period = int(1.0 / self.frequency * 1e9)

        os.system("sudo chmod 777 /sys/class/pwm/pwmchip1/export")
        os.system("sudo echo 0 > /sys/class/pwm/pwmchip1/export")
        os.system("sudo chmod 777 /sys/class/pwm/pwmchip1/pwm0/*")
        os.system(f"sudo echo {self.period} > /sys/class/pwm/pwmchip1/pwm0/period")
        os.system("sudo echo 1 > /sys/class/pwm/pwmchip1/pwm0/enable")

        os.system("sudo chmod 777 /sys/class/pwm/pwmchip3/export")
        os.system("sudo echo 0 > /sys/class/pwm/pwmchip3/export")
        os.system("sudo chmod 777 /sys/class/pwm/pwmchip3/pwm0/*")
        os.system(f"sudo echo {self.period} > /sys/class/pwm/pwmchip3/pwm0/period")
        os.system("sudo echo 1 > /sys/class/pwm/pwmchip3/pwm0/enable")


        pwmleft = rospy.Service('pwm_left', Pwm, self.handlepwmleft)
        pwmright = rospy.Service('pwm_right', Pwm, self.handlepwmright)


    def handlepwmleft(self,req):
        duty_cycle = int(req.set_duty * self.period)
        os.system(f"sudo echo {duty_cycle} > /sys/class/pwm/pwmchip3/pwm0/duty_cycle")
        return PwmResponse(duty_cycle)


    def handlepwmright(self,req):
        duty_cycle = int(req.set_duty * self.period)
        os.system(f"sudo echo {duty_cycle} > /sys/class/pwm/pwmchip1/pwm0/duty_cycle")
        return PwmResponse(duty_cycle)



if __name__ == "__main__":
    rospy.init_node('pwm')
    print("pwmctl ready")
    Pwmctl()
    rospy.spin()