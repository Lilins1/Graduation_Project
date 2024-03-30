import sys
sys.path.append("/home/orangepi/shufly/src/pi_car/scripts/")

import rospy
from std_msgs.msg import Float32

from hardware.Motor import Motor
from control.pid import PID

class ControlNode:
    def __init__(self) -> None:
        #----------Hardware--------------------------
        self.motor_left = Motor(4, 0, ("/dev/gpiochip0", 29, "out"), ("/dev/gpiochip4", 11, "out"))
        self.motor_right = Motor(0, 0, ("/dev/gpiochip1", 18, "out"), ("/dev/gpiochip1", 20, "out"))

        self.motor_left.frequency = 500
        self.motor_right.frequency = 500

        self.motor_left.polarity = "normal"
        self.motor_right.polarity = "normal"

        self.motor_left.duty_cycle = 0
        self.motor_right.duty_cycle = 0

        self.motor_left.enable()
        self.motor_right.enable()

        #----------Execute Parameter----------------
        self.throttle = 0
        self.steer = 0

        #----------Measure Parameter----------------
        self.yaw = None

        #----------Control Parameter--------------
        self.steer_pid = PID(0.05, 0)
        self.speed_pid = PID(1, 0)
        self.max_steer = 0.5
        self.target_yaw = 0
        self.target_speed = 0

        # ros
        self.alttitude_sub = rospy.Subscriber(
            "/pi_car/mpu6050/yaw", Float32, self.on_alttitude_data
        )

        self.control_task_timer = rospy.Timer(
            rospy.Duration(0.05),
            self.control_task
        )

        # services
        rospy.Service(
            "/pi_car/controller/set_yaw",

        )


    def set_target_yaw(self, target_yaw):
        pass

    def brake(self):
        pass



    def lock(self):
        self.motor_left.duty_cycle = 0
        self.motor_right.duty_cycle = 0
        self.motor_left.disable()
        self.motor_right.disable()

    def on_alttitude_data(self, data: Float32):
        self.yaw = data.data

    def control_task(self, timer):
        if self.yaw is None:
            return
        
        # -1 < throttle < 1
        self.speed_ctrl()
        self.steer_ctrl()
        if self.steer > self.max_steer:
            self.steer = self.max_steer
        elif self.steer < -self.max_steer:
            self.steer = -self.max_steer

        self.motor_left.set_throttle(self.throttle + self.steer, 0.45)
        self.motor_right.set_throttle(self.throttle - self.steer, 0.5)

    def steer_ctrl(self):
        if (self.throttle == 0):
            return
        
        current_yaw = self.yaw
        # print(current_yaw - self.target_yaw, end = None, flush = False)
        self.steer_pid.update(current_yaw - self.target_yaw)

        self.steer = self.steer_pid.out

    def speed_ctrl(self):
        pass

    def car_start(self, thr):
        if not self.throttle == 0:
            return
        else:
            self.throttle = thr




if __name__ == "__main__":
    try:
        rospy.init_node("picar_controller")

        controller = ControlNode()

        # 油门
        # controller.car_start(0.3)

        rospy.spin()

    finally:
        controller.lock()