#include <stdint.h>
#include <string.h>
#include <time.h>

#include <string>

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <fsae_electric_vehicle/data_struct.h>

// std::mutex dataMutex;
// std::array<float, 23> temp;

struct data
{
    int32_t time;       // Current time
    int32_t timer;      // Time (in seconds and ms) since the start of the lap
    int32_t steerAngle; // Angle of the steering wheel with precision to 3 decimal places
    int32_t battTemp;   // Tempurature of the battery with precision to 3 decimal places. >60 is critical
    int32_t battVolt;   // Battery voltage with precision to 3 decimal places
    int32_t motSpeed;   // Speed of the motor with precision to 3 decimal places

    int16_t brakePos;   // position of the brake pedal
    int16_t accelPos;   // position of the acceleration pedal
    //int32_t gear;     // Gear not used on EV

    int32_t waterTemp;  // The EV is water-cooled, and the tempurature of the water
                        // has a relation to the tempurature of the battery
    int32_t latitude;   // Latitudinal position of the car with precision to 4 or more decimal places
    int32_t longitude;  // Longitudinal position of the car with precision to 4 or more decimal places
    
    int32_t Xacc;       // Acceleration of the vehicle along the X, Y, and Z axes
    int32_t Yacc;
    int32_t Zacc;
    int32_t Xgyro;      // Angle of the vehicle along the X, Y, and Z Axes
    int32_t Ygyro;
    int32_t Zgyro;

    // Hall effects sensors help measure the traction and slippage of each wheel
    int32_t FLsusp;
    int32_t FRsusp;
    int32_t RLsusp;
    int32_t RRsusp;
    int32_t FLspeed;
    int32_t FRspeed;
    int32_t RLspeed;
    int32_t RRspeed;
};

// void gpsCallback(const fsae_electric_vehicle::gps::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&temp[], &msg->latitude, 4);
//   std::memcpy(&data[1], &msg->longitude, 4);
// }

// void brakeCallback(const fsae_electric_vehicle::brake_pressure::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[5], &msg->pressure, 4);
// }

// void coolantCallback(const fsae_electric_vehicle::coolant::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[4], &msg->temperature, 4);
// }

// void batteryCallback(const fsae_electric_vehicle::drive_train::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[3], &msg->voltage, 4);
// }

// void speedCallback(const fsae_electric_vehicle::speedometer::ConstPtr& msg) {
//      std::lock_guard<std::mutex> lock{dataMutex};
//      std::memcpy(&data[2], &msg->speed, 4);

// void printStruct(const struct data& d)
// {
//     printf("%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n",
//             d.time, d.timer, d.steerAngle, d.battTemp, d.battVolt, d.motSpeed, d.brakePos,
//             d.accelPos, d.waterTemp, d.latitude, d.longitude, d.Xacc, d.Yacc, d.Zacc,
//             d.Xgyro, d.Ygyro, d.Zgyro, d.FLsusp,
//             d.FRsusp, d.RLsusp, d.RRsusp, d.FLspeed, d.FRspeed, d.RLspeed, d.RRspeed);
// }

int main(int argc, char** argv)
{


    struct data d;
    std::memset(&d, 0, sizeof(struct data));

    ros::init(argc, argv, "DataStruct");
    ros::NodeHandle n;

    // ros::Subscriber speed = n.subscribe<fsae_electric_vehicle::speedometer>("speedometer", 1000, speedCallback);
    // ros::Subscriber gps = n.subscribe<fsae_electric_vehicle::gps>("GPS", 1000, gpsCallback);
    // ros::Subscriber bat = n.subscribe<fsae_electric_vehicle::drive_train>("drivetrain_voltage", 1000, batteryCallback);
    // ros::Subscriber cool = n.subscribe<fsae_electric_vehicle::coolant>("coolant_temperature", 1000, coolantCallback);
    // ros::Subscriber brake = n.subscribe<fsae_electric_vehicle::brake_pressure>("brake_pressure", 1000, brakeCallback);

    time_t startTime, currTime;
    time(&startTime);
    d.time = time(&currTime);

    d.timer = currTime - startTime;

    d.steerAngle = 1.337 * 1000;

    d.battTemp = 30.155 * 1000;

    d.motSpeed = 256.512 * 1000;

    d.brakePos = 1;
    d.accelPos = 1;

    d.waterTemp = 24.375 * 1000;
    // d.waterTemp = data[4] * 1000;

    d.latitude = 34.241991 * 10000;
    // d.latitude = data[0] * 1000;

    d.longitude = 118.528459 * 10000;
    // d.longitude = data[1] * 1000;

    char charData[sizeof(struct data)];
    std::memcpy(charData, &d, sizeof(d));

    //printStruct(d);

    ros::Publisher data_topic = n.advertise<fsae_electric_vehicle::data_struct>("DataStruct", 1000);

    std::cout << "Created publisher" << std::endl;
    // std::cout << charData << std::endl;

    ros::Rate loop_rate(10);

    while(ros::ok())
    {
        std_msgs::String msg;

        msg.data = charData;
        
        // std::cout << "I'm saying: " << msg.data << std::endl;
        data_topic.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}