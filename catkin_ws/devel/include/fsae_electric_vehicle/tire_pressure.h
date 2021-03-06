// Generated by gencpp from file fsae_electric_vehicle/tire_pressure.msg
// DO NOT EDIT!


#ifndef FSAE_ELECTRIC_VEHICLE_MESSAGE_TIRE_PRESSURE_H
#define FSAE_ELECTRIC_VEHICLE_MESSAGE_TIRE_PRESSURE_H


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
struct tire_pressure_
{
  typedef tire_pressure_<ContainerAllocator> Type;

  tire_pressure_()
    : front_left_value(0.0)
    , front_left_time()
    , front_right_value(0.0)
    , front_right_time()
    , back_left_value(0.0)
    , back_left_time()
    , back_right_value(0.0)
    , back_right_time()  {
    }
  tire_pressure_(const ContainerAllocator& _alloc)
    : front_left_value(0.0)
    , front_left_time(_alloc)
    , front_right_value(0.0)
    , front_right_time(_alloc)
    , back_left_value(0.0)
    , back_left_time(_alloc)
    , back_right_value(0.0)
    , back_right_time(_alloc)  {
  (void)_alloc;
    }



   typedef float _front_left_value_type;
  _front_left_value_type front_left_value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _front_left_time_type;
  _front_left_time_type front_left_time;

   typedef float _front_right_value_type;
  _front_right_value_type front_right_value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _front_right_time_type;
  _front_right_time_type front_right_time;

   typedef float _back_left_value_type;
  _back_left_value_type back_left_value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _back_left_time_type;
  _back_left_time_type back_left_time;

   typedef float _back_right_value_type;
  _back_right_value_type back_right_value;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _back_right_time_type;
  _back_right_time_type back_right_time;





  typedef boost::shared_ptr< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> const> ConstPtr;

}; // struct tire_pressure_

typedef ::fsae_electric_vehicle::tire_pressure_<std::allocator<void> > tire_pressure;

typedef boost::shared_ptr< ::fsae_electric_vehicle::tire_pressure > tire_pressurePtr;
typedef boost::shared_ptr< ::fsae_electric_vehicle::tire_pressure const> tire_pressureConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fsae_electric_vehicle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'fsae_electric_vehicle': ['/home/nvidia/Desktop/jetsonTx2/catkin_ws/src/fsae_electric_vehicle/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a6ea563b0ec5361d7adcaeba167aaab";
  }

  static const char* value(const ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a6ea563b0ec5361ULL;
  static const uint64_t static_value2 = 0xd7adcaeba167aaabULL;
};

template<class ContainerAllocator>
struct DataType< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fsae_electric_vehicle/tire_pressure";
  }

  static const char* value(const ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 front_left_value\n\
string front_left_time\n\
float32 front_right_value\n\
string front_right_time\n\
float32 back_left_value\n\
string back_left_time\n\
float32 back_right_value\n\
string back_right_time\n\
";
  }

  static const char* value(const ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.front_left_value);
      stream.next(m.front_left_time);
      stream.next(m.front_right_value);
      stream.next(m.front_right_time);
      stream.next(m.back_left_value);
      stream.next(m.back_left_time);
      stream.next(m.back_right_value);
      stream.next(m.back_right_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tire_pressure_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fsae_electric_vehicle::tire_pressure_<ContainerAllocator>& v)
  {
    s << indent << "front_left_value: ";
    Printer<float>::stream(s, indent + "  ", v.front_left_value);
    s << indent << "front_left_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.front_left_time);
    s << indent << "front_right_value: ";
    Printer<float>::stream(s, indent + "  ", v.front_right_value);
    s << indent << "front_right_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.front_right_time);
    s << indent << "back_left_value: ";
    Printer<float>::stream(s, indent + "  ", v.back_left_value);
    s << indent << "back_left_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.back_left_time);
    s << indent << "back_right_value: ";
    Printer<float>::stream(s, indent + "  ", v.back_right_value);
    s << indent << "back_right_time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.back_right_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FSAE_ELECTRIC_VEHICLE_MESSAGE_TIRE_PRESSURE_H
