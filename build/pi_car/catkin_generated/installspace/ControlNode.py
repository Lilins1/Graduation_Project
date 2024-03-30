import sys
sys.path.append("/home/orangepi/shufly/src/pi_car/scripts/")

import rospy
from std_msgs.msg import Float32

from hardware.Motor import Motor
from control.pid import PID
from pi_car.srv import String, StringRequest, StringResponse
from std_srvs.srv import Empty, EmptyRequest, EmptyResponse

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
        self.steer_pid = PID(0.05, 0.08)
        self.speed_pid = PID(1, 0.15)
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
        srv_yaw = rospy.Service(
            "/pi_car/controller/set_yaw",
            String,
            self.handle_set_target_yaw
        )

        srv_brake = rospy.Service(
            "/pi_car/controller/brake",
            Empty,
            self.handle_brake
        )

        srv_speed = rospy.Service(
            "/pi_car/controller/set_speed",
            String,
            self.handle_set_speed
        )


    def handle_set_target_yaw(self, req: StringRequest):
        self.target_yaw = float(req.input)
        return StringResponse(req.input)


    def handle_set_speed(self, req: StringRequest):
        speed_ratio = float(req.input)
        if speed_ratio >= 0.8:
            speed_ratio = 0.8

        self.throttle = speed_ratio

        return StringResponse(req.input)


    def handle_brake(self, req: EmptyRequest):
        self.throttle = 0
        self.lock()

        return EmptyResponse()


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
        self.steer_pid.update(self.get_diff(current_yaw - self.target_yaw))

        self.steer = self.steer_pid.out

    def speed_ctrl(self):
        pass

    def car_start(self, thr):
        if not self.throttle == 0:
            return
        else:
            self.throttle = thr

    def get_diff(self, diff):
        while diff > 180:
            diff -= 360
        
        while diff < -180:
            diff += 360

        return diff





if __name__ == "__main__":
    try:
        rospy.init_node("picar_controller")

        controller = ControlNode()

        rospy.spin()

    finally:
        controller.lock()