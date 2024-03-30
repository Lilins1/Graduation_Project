import sys
sys.path.append("/home/orangepi/shufly/src/pi_car/scripts/")

import rospy
from std_msgs.msg import Float32

from sensor.mpu6050 import Mpu6050
import numpy as np
import time


class AlttitudeNode:
    def __init__(self) -> None:
        self.mpu6050 = Mpu6050(0x68)
        self.mean_gyro = self._calib_mpu6050()

        self.yaw = 0.
        self.last_gyro = 0

        self.publisher = rospy.Publisher("/pi_car/mpu6050/yaw", Float32, queue_size = 5)
        
        self.t0 = time.time()
        self.timer = rospy.Timer(
            rospy.Duration(0.02),
            self.alttitude_measure_task
        )


    def _calib_mpu6050(self):
        mean_gyro = np.array([0, 0, 0], dtype = np.float)
        for i in range(1000):
            mean_gyro += np.array(self.mpu6050.get_gyro_data())
        mean_gyro /= 1000

        return mean_gyro
    
    def alttitude_measure_task(self, timer):
        gyro_data = self.mpu6050.get_gyro_data() - self.mean_gyro
        time_stamp = time.time()

        #------------Low Pass Filter-------------------
        current_gyro = self.last_gyro * 0.3 + gyro_data[2] * 0.7
        self.last_gyro = current_gyro

        #------------Integration---------------------
        if abs(current_gyro) > 0.3:
            self.yaw += current_gyro * (time_stamp - self.t0)

        #------------Time stamp Update--------------
        self.t0 = time_stamp

        self.publisher.publish(self.yaw)


if __name__ == "__main__":
    rospy.init_node("picar_IMUNode")
    imu_node = AlttitudeNode()

    rospy.spin()

