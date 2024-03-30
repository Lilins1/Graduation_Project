import rospy
from pi_car.srv import StringRequest, StringResponse, String
from std_srvs.srv import Empty, EmptyRequest, EmptyResponse
import time

rospy.init_node("car_test")


rospy.wait_for_service("/pi_car/controller/brake")
rospy.wait_for_service("/pi_car/controller/set_yaw")
rospy.wait_for_service("/pi_car/controller/set_speed")

brake_srv = rospy.ServiceProxy("/pi_car/controller/brake", Empty)
yaw_srv = rospy.ServiceProxy("/pi_car/controller/set_yaw", String)
speed_srv = rospy.ServiceProxy("/pi_car/controller/set_speed", String)
time.sleep(6)

try:
    speed_srv(str(0.5))
    while True:
        for i in range(12):
            print("set yaw", 30 * i)
            # print("set speed", 0.3 + i * 0.05)

            yaw_srv(str(30 * i))

            time.sleep(2)


finally:
    brake_srv(EmptyRequest())