#include <stdint.h>
#include <string.h>

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
}

int32_t main()
{
    struct data d;
    memset(&d, 0, sizeof(struct data)); // 0-fill the struct before use

    // populate struct with data

    char charData[sizeof(struct data)];
    memcpy(charData, &d, sizeof(struct data)); // Create char-encoded copy of data struct

    // send chardata
    
    return 0;
}