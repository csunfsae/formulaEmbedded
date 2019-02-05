#ifndef ANALOG_SENSOR_H
#define ANALOG_SENSOR_H
class Analog_Sensor{
  private:
  int data;
  public:
  Analog_Sensor();
  void set_data(int value);
  int get_data();
};
#endif
