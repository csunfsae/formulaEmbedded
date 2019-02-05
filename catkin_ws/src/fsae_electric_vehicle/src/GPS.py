# CSUN FSAE EV 2018
# ROS NODE: GPS
# Topics Subcribed: None
# Topics Publishing: gps_data
# Summary:
#     The purpose of this node is to read latitude and longitude data
#     from the Sierra Wireless MC7455 Modem
# Related:
#     MC7455 Compatible Drivers: (https://source.sierrawireless.com/resources/airprime/software/usb-drivers-linux-qmi-software-latest/)
#     Configurations were set up using Minicom using AT Commands
#     (https://source.sierrawireless.com/resources/airprime/minicard/74xx/4117727-airprime-em74xx-mc74xx-at-command-reference/)
#   Documents:
#      Drivers configuration guide: (https://source.sierrawireless.com/resources/airprime/software/linux-qmi-sdk-application-developer-guide-1,-d-,26/)
#

#! /usr/bin/env python
import rospy
from gps.msg import GPS
import serial
from time import sleep
#gets data from modem
publisher = rospy.Publisher('gps',GPS, queue_size=10)
rospy.init_node('GPS')
gps_data = GPS()

while not rospy.is_shutdown():
    gps = serial.Serial('/dev/ttyUSB1')
    #while(True):
    a_string = gps.readline()
    a_string = a_string[1:len(a_string)-1]
    a_string = a_string.decode('UTF-8')
    latitude=0.0
    longitude=0.0
    list = a_string.split(",")

    if(list[0] == "GPGGA"):
        del list[0]
        try:
            latitude = float(list[1])/100.0
            longitude = float(list[3])/100.0
        except:
            latitude = 0.0
            longitude = 0.0
        if(list[2] == "S"):
            latitude = latitude*(-1)
        if(list[4] == "W"):
            longitude = longitude*(-1)
        # print('%.8f'%latitude + ", " + '%.8f'%longitude)
        gps_data.latitude = latitude
        gps_data.longitude = longitude
        rospy.loginfo(gps_data);
        pub.publish(gps_data);
    sleep(1)
