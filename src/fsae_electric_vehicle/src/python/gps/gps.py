#!/usr/bin/env python3
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

import serial
import re
import pynmea2
import rospy
from datetime import datetime, timezone
from fsae_electric_vehicle.msg import gps

gps_data = serial.Serial('/dev/ttyUSB1')
msg = gps()
pub = rospy.Publisher('GPS', gps, queue_size=10)
rospy.init_node('GPS', anonymous=True)
rate = rospy.Rate(1)
def GPS():
    while not rospy.is_shutdown():
        regexp = re.compile(r'\$GPGGA(.*)')
        a_string = gps_data.readline()
        a_string = a_string.decode('UTF-8')
        if regexp.search(a_string):
            readout = pynmea2.parse(a_string)
            if readout.latitude != 0:
                print('Found!')
                msg.latitude = readout.latitude
                msg.longitude = readout.longitude
                msg.sats = int(readout.num_sats)
                msg.alt = float(readout.altitude)
                msg.time = 0 #datetime.now(timezone.utc).isoformat()
                pub.publish(msg)
                rate.sleep()
            else:
                msg.latitude = float(1)
                msg.longitude = float(1)
                msg.sats = int(1)
                msg.alt = float(1)
                msg.time = 0 #datetime.now(timezone.utc).isoformat()
                pub.publish(msg)
                rate.sleep()

if __name__ == '__main__':
    try:
        GPS()
    except rospy.ROSInterruptException:
        pass
