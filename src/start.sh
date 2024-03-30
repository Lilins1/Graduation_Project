!/bin/bash
gnome-terminal -x bash -c "source /opt/ros/noetic/setup.bash;source ~/shufly/devel/setup.bash;/home/orangepi/shufly/src/pi_car/startup/start.sh"
sleep 1s

gnome-terminal -x bash -c "source /opt/ros/noetic/setup.bash;source ~/shufly/devel/setup.bash;python ~/shufly/src/pi_car/scripts/navigator.py"
sleep 5s

gnome-terminal -x bash -c "source /opt/ros/noetic/setup.bash;source ~/shufly/devel/setup.bash;python ~/shufly/src/pi_car/scripts/UDPLink.py"
sleep 1s

#gnome-terminal -x bash -c "source /opt/ros/noetic/setup.bash;source ~/shufly/devel/setup.bash;python3 ~/shufly/src/task/src/btn_start.py"

#gnome-terminal -- /home/orangepi/shufly/src/pi_car/startup/start.sh
#gnome-terminal -- python ~/shufly/src/pi_car/scripts/UDPLink.py
#gnome-terminal -- python ~/shufly/src/pi_car/scripts/navigator.py
