#ifndef ANALOG_SENSOR_H
#define ANALOG_SENSOR_H
class Analog_Sensor{
  private:
  int data;
  int units;
  int lower_limit;
  int upper_limit;
  public:
  Analog_Sensor();
  Analog_Sensor(int lower_limit, int upper_limit);
  void set_data(int value);
  int get_data();
  void set_units(int units);
  int get_units();
  void calculate_units(int raw_data);
};
#endif
