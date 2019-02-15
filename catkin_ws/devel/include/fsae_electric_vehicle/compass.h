// Generated by gencpp from file fsae_electric_vehicle/compass.msg
// DO NOT EDIT!


#ifndef FSAE_ELECTRIC_VEHICLE_MESSAGE_COMPASS_H
#define FSAE_ELECTRIC_VEHICLE_MESSAGE_COMPASS_H


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
struct compass_
{
  typedef compass_<ContainerAllocator> Type;

  compass_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , time()  {
    }
  compass_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::fsae_electric_vehicle::compass_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fsae_electric_vehicle::compass_<ContainerAllocator> const> ConstPtr;

}; // struct compass_

typedef ::fsae_electric_vehicle::compass_<std::allocator<void> > compass;

typedef boost::shared_ptr< ::fsae_electric_vehicle::compass > compassPtr;
typedef boost::shared_ptr< ::fsae_electric_vehicle::compass const> compassConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fsae_electric_vehicle::compass_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fsae_electric_vehicle::compass_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fsae_electric_vehicle

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'fsae_electric_vehicle': ['/home/nvidia/Desktop/formulaEmbedded/catkin_ws/src/fsae_electric_vehicle/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fsae_electric_vehicle::compass_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsae_electric_vehicle::compass_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsae_electric_vehicle::compass_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "093e31f85644998fb59a959954c3fd8b";
  }

  static const char* value(const ::fsae_electric_vehicle::compass_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x093e31f85644998fULL;
  static const uint64_t static_value2 = 0xb59a959954c3fd8bULL;
};

template<class ContainerAllocator>
struct DataType< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fsae_electric_vehicle/compass";
  }

  static const char* value(const ::fsae_electric_vehicle::compass_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x \n\
float32 y \n\
float32 z \n\
string time\n\
";
  }

  static const char* value(const ::fsae_electric_vehicle::compass_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct compass_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fsae_electric_vehicle::compass_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fsae_electric_vehicle::compass_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FSAE_ELECTRIC_VEHICLE_MESSAGE_COMPASS_H
