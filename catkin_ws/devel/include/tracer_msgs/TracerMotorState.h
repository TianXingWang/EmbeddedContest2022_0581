// Generated by gencpp from file tracer_msgs/TracerMotorState.msg
// DO NOT EDIT!


#ifndef TRACER_MSGS_MESSAGE_TRACERMOTORSTATE_H
#define TRACER_MSGS_MESSAGE_TRACERMOTORSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tracer_msgs
{
template <class ContainerAllocator>
struct TracerMotorState_
{
  typedef TracerMotorState_<ContainerAllocator> Type;

  TracerMotorState_()
    : rpm(0.0)  {
    }
  TracerMotorState_(const ContainerAllocator& _alloc)
    : rpm(0.0)  {
  (void)_alloc;
    }



   typedef double _rpm_type;
  _rpm_type rpm;





  typedef boost::shared_ptr< ::tracer_msgs::TracerMotorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tracer_msgs::TracerMotorState_<ContainerAllocator> const> ConstPtr;

}; // struct TracerMotorState_

typedef ::tracer_msgs::TracerMotorState_<std::allocator<void> > TracerMotorState;

typedef boost::shared_ptr< ::tracer_msgs::TracerMotorState > TracerMotorStatePtr;
typedef boost::shared_ptr< ::tracer_msgs::TracerMotorState const> TracerMotorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tracer_msgs::TracerMotorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tracer_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tracer_msgs': ['/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tracer_msgs::TracerMotorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tracer_msgs::TracerMotorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracer_msgs::TracerMotorState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c487592c900c21b37f53edce9a36629";
  }

  static const char* value(const ::tracer_msgs::TracerMotorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c487592c900c21bULL;
  static const uint64_t static_value2 = 0x37f53edce9a36629ULL;
};

template<class ContainerAllocator>
struct DataType< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tracer_msgs/TracerMotorState";
  }

  static const char* value(const ::tracer_msgs::TracerMotorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#float64 current\n\
float64 rpm\n\
#float64 temperature\n\
";
  }

  static const char* value(const ::tracer_msgs::TracerMotorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rpm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TracerMotorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tracer_msgs::TracerMotorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tracer_msgs::TracerMotorState_<ContainerAllocator>& v)
  {
    s << indent << "rpm: ";
    Printer<double>::stream(s, indent + "  ", v.rpm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRACER_MSGS_MESSAGE_TRACERMOTORSTATE_H