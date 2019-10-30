import rospy
from fsae_electric_vehicle.msg import gps
from fsae_electric_vehicle.msg import serial
from fsae_electric_vehicle.msg import speedometer

def callback(data):
    rospy.loginfo("%d the latitude value %d" % (data.latitude, 42))
    #print(data.latitude)

def callbackspeed(data):
    rospy.loginfo("%f the speed value %d" % (data.speed, 42))

def listener():
    rospy.init_node('custom_listener', anonymous=True)
    rospy.Subscriber("gps", gps, callback)
    print('hello!')

    rospy.Subscriber("speedometer", speedometer, callbackspeed)

    # pub = rospy.Publisher('serial', serial)

    # msg = serial()
    # msg.latitude = 0
    # rate = rospy.Rate(5)

    # while not rospy.is_shutdown:
    #     msg.latitude = msg.latitude + 1
    #     pub.publish(msg)
    #     rate.sleep()


    # pub.publish()

   # spin() simply keeps python from exiting until this node is stopped

    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
