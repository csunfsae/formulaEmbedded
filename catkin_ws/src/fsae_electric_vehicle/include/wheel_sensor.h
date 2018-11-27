#include <chrono> 

class wheel_sensor{
  private:
    double value;
    std::chrono::high_resolution_clock time;
  public:
    void setValue(double value){
      this->value = value;
    }
    double getValue(){
      return this->value;
    }
    void setTime(std::chrono::high_resolution_clock time){
      this->time = time; 
    }
    std::chrono::high_resolution_clock getTime(){
      return time;
    }

};
