#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
from task.srv import *

class AnalysisMeg:
    def __init__(self):
        init = "DS24(12,34,'  0.00dm',15);"+"DS24(12,74,'  0.00dm',15);"+"DS24(12,115,'  0.00dm',15);"+"DS24(12,173,'  0.00dm',15);"+"DS24(12,215,'  0.00dm',15);"+"\r\n"
        self.update = rospy.ServiceProxy('send2screen', Uart)
        self.update(init)
        self.reset  = "PL(112,47,399,47,32);PL(112,95,399,95,32);PL(112,143,399,143,32);PL(112,191,399,191,32);PL(351,0,351,239,32);PL(303,0,303,239,32);PL(255,0,255,239,32);PL(207,0,207,239,32);"
        self.x_last2,self.y_last2 = 136,199
        self.x_last,self.y_last = 136,199
        self.end = '\r\n'
        self.find = False
        self.findtarget = rospy.ServiceProxy('send2msp', Uart)
        rospy.Subscriber('get_msg',String,self.callback,queue_size=10)


    def process_screen_data(self,x_pos,y_pos,sum):
        send_x_pos = "DS24(12,34,'"+x_pos+"',15);"
        send_y_pos = "DS24(12,74,'"+y_pos+"',15);"
        send_sum = "DS24(12,115,'"+sum+"',15);"
        return send_x_pos+send_y_pos+send_sum


    def draw_line(self,x1,y1,x2,y2):
        return "PL("+str(x1)+','+str(y1)+','+str(x2)+','+str(y2)+",2);"

    def maptf(self,x,y):
        map_x = 0.6*x+112
        map_y = -0.6*y+239
        return int(map_x),int(map_y)


    def callback(self,msg):
        #坐标点
        if msg.data[0] == 'M' and msg.data[-1] == 'N':
            x_pos = msg.data[1:9]
            y_pos = msg.data[9:17]
            x_now,y_now  = self.maptf(float(x_pos[:-2])*10,float(y_pos[:-2])*10)
            sum = msg.data[17:25]
            loc = self.process_screen_data(x_pos,y_pos,sum)
            clear_last = "PIC("+str(self.x_last-8)+','+str(self.y_last-8)+",3);"
            step_1 = self.draw_line(self.x_last2,self.y_last,self.x_last2,self.y_last2)
            step_2 = self.draw_line(self.x_last2,self.y_last,self.x_last,self.y_last)
            step_3 = self.draw_line(self.x_last,y_now,self.x_last,self.y_last)
            step_4 = self.draw_line(self.x_last,y_now,x_now,y_now)
            pic_now = "PIC("+str(x_now-8)+','+str(y_now-8)+",1);"
            draw = clear_last+self.reset+step_1+step_2+step_3+step_4+pic_now
            if self.find:
                draw += self.pic_fire

            self.sendscreen = loc+draw+self.end               
            self.update(self.sendscreen)
            self.x_last2,self.y_last2 = self.x_last,self.y_last
            self.x_last,self.y_last = x_now,y_now

        #火情位置    
        elif msg.data[0] == 'M' and msg.data[-1] == 'C':
            target_x_int = int(msg.data[1:4])+40
            target_y_int = int(msg.data[6:9])+40

            map_x,map_y = self.maptf(target_x_int,target_y_int)

            tar_x = "DS24(12,173,'"+(4-len(str(target_x_int//10)))*' '+str(target_x_int)[:-1]+'.'+msg.data[4]+"dm',15);"
            tar_y = "DS24(12,215,'"+(4-len(str(target_y_int//10)))*' '+str(target_y_int)[:-1]+'.'+msg.data[7]+"dm',15);"
            self.pic_fire = "PIC("+str(map_x-8)+","+str(map_y-8)+",2);"
            self.update(tar_x+tar_y+self.pic_fire+self.end)
            self.find = True
            sendmsp = 'S01'+str(target_x_int).zfill(3)+msg.data[4:6]+str(target_y_int).zfill(3)+msg.data[9:11]+'E'
            #sendmsp = 'S01'+msg.data[1:-1]+'E'
            self.findtarget(sendmsp)




if __name__ == '__main__':
    rospy.wait_for_service('send2screen')
    rospy.wait_for_service('send2msp')
    rospy.init_node('analysis_msg') 
    AnalysisMeg()
    rospy.spin()


