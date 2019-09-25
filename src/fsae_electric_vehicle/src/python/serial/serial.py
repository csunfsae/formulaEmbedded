import rospy
from fsae_electric_vehicle.msg import gps

def callback(data):
    rospy.loginfo("%d is age: %d" % (data.latitude, 42))
    print(data.latitude)



def listener():
    rospy.init_node('custom_listener', anonymous=True)
    rospy.Subscriber("gps", gps, callback)
    print('hello!')

   # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
