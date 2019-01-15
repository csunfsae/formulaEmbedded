// Generated by gencpp from file fsae_electric_vehicle/steering_input.msg
// DO NOT EDIT!


#ifndef FSAE_ELECTRIC_VEHICLE_MESSAGE_STEERING_INPUT_H
#define FSAE_ELECTRIC_VEHICLE_MESSAGE_STEERING_INPUT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fsae_electric_vehicle
{
template <class ContainerAllocator>
struct steering_input_
{
  typedef steering_input_<ContainerAllocator> Type;

  steering_input_()
    : value(0.0)
    , time()  {
    }
  steering_input_(const ContainerAllocator& _alloc)
    : value(0.0)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef float _value_type;
  _value_type value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> const> ConstPtr;

}; // struct steering_input_

typedef ::fsae_electric_vehicle::steering_input_<std::allocator<void> > steering_input;

typedef boost::shared_ptr< ::fsae_electric_vehicle::steering_input > steering_inputPtr;
typedef boost::shared_ptr< ::fsae_electric_vehicle::steering_input const> steering_inputConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fsae_electric_vehicle::steering_input_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fsae_electric_vehicle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'fsae_electric_vehicle': ['/src/catkin_ws/src/fsae_electric_vehicle/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efaa27c9229f431a06b62922d8b71027";
  }

  static const char* value(const ::fsae_electric_vehicle::steering_input_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefaa27c9229f431aULL;
  static const uint64_t static_value2 = 0x06b62922d8b71027ULL;
};

template<class ContainerAllocator>
struct DataType< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fsae_electric_vehicle/steering_input";
  }

  static const char* value(const ::fsae_electric_vehicle::steering_input_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 value \n\
string time\n\
";
  }

  static const char* value(const ::fsae_electric_vehicle::steering_input_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct steering_input_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fsae_electric_vehicle::steering_input_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fsae_electric_vehicle::steering_input_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
    s << indent << "time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FSAE_ELECTRIC_VEHICLE_MESSAGE_STEERING_INPUT_H
