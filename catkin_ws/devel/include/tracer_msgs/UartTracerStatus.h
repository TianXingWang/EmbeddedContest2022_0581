// Generated by gencpp from file tracer_msgs/UartTracerStatus.msg
// DO NOT EDIT!


#ifndef TRACER_MSGS_MESSAGE_UARTTRACERSTATUS_H
#define TRACER_MSGS_MESSAGE_UARTTRACERSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <tracer_msgs/UartTracerMotorState.h>
#include <tracer_msgs/TracerLightState.h>
#include <tracer_msgs/TracerLightState.h>

namespace tracer_msgs
{
template <class ContainerAllocator>
struct UartTracerStatus_
{
  typedef UartTracerStatus_<ContainerAllocator> Type;

  UartTracerStatus_()
    : header()
    , linear_velocity(0.0)
    , angular_velocity(0.0)
    , base_state(0)
    , control_mode(0)
    , fault_code(0)
    , battery_voltage(0.0)
    , motor_states()
    , light_control_enabled(false)
    , front_light_state()
    , rear_light_state()  {
    }
  UartTracerStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , linear_velocity(0.0)
    , angular_velocity(0.0)
    , base_state(0)
    , control_mode(0)
    , fault_code(0)
    , battery_voltage(0.0)
    , motor_states()
    , light_control_enabled(false)
    , front_light_state(_alloc)
    , rear_light_state(_alloc)  {
  (void)_alloc;
      motor_states.assign( ::tracer_msgs::UartTracerMotorState_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _linear_velocity_type;
  _linear_velocity_type linear_velocity;

   typedef double _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef uint8_t _base_state_type;
  _base_state_type base_state;

   typedef uint8_t _control_mode_type;
  _control_mode_type control_mode;

   typedef uint16_t _fault_code_type;
  _fault_code_type fault_code;

   typedef double _battery_voltage_type;
  _battery_voltage_type battery_voltage;

   typedef boost::array< ::tracer_msgs::UartTracerMotorState_<ContainerAllocator> , 2>  _motor_states_type;
  _motor_states_type motor_states;

   typedef uint8_t _light_control_enabled_type;
  _light_control_enabled_type light_control_enabled;

   typedef  ::tracer_msgs::TracerLightState_<ContainerAllocator>  _front_light_state_type;
  _front_light_state_type front_light_state;

   typedef  ::tracer_msgs::TracerLightState_<ContainerAllocator>  _rear_light_state_type;
  _rear_light_state_type rear_light_state;



  enum {
    MOTOR_ID_FRONT_RIGHT = 0,
    MOTOR_ID_FRONT_LEFT = 1,
    MOTOR_ID_REAR_RIGHT = 2,
    MOTOR_ID_REAR_LEFT = 3,
    LIGHT_ID_FRONT = 0,
    LIGHT_ID_REAR = 1,
  };


  typedef boost::shared_ptr< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> const> ConstPtr;

}; // struct UartTracerStatus_

typedef ::tracer_msgs::UartTracerStatus_<std::allocator<void> > UartTracerStatus;

typedef boost::shared_ptr< ::tracer_msgs::UartTracerStatus > UartTracerStatusPtr;
typedef boost::shared_ptr< ::tracer_msgs::UartTracerStatus const> UartTracerStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tracer_msgs::UartTracerStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tracer_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tracer_msgs': ['/home/z/catkin_ws/src/tracer_ros/tracer_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a49e199fd32bf5d7341d653c6b3ba6e";
  }

  static const char* value(const ::tracer_msgs::UartTracerStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a49e199fd32bf5dULL;
  static const uint64_t static_value2 = 0x7341d653c6b3ba6eULL;
};

template<class ContainerAllocator>
struct DataType< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tracer_msgs/UartTracerStatus";
  }

  static const char* value(const ::tracer_msgs::UartTracerStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
int8 MOTOR_ID_FRONT_RIGHT = 0\n\
int8 MOTOR_ID_FRONT_LEFT = 1\n\
int8 MOTOR_ID_REAR_RIGHT = 2\n\
int8 MOTOR_ID_REAR_LEFT = 3\n\
\n\
int8 LIGHT_ID_FRONT = 0\n\
int8 LIGHT_ID_REAR = 1\n\
\n\
# motion state\n\
float64 linear_velocity\n\
float64 angular_velocity\n\
\n\
# base state\n\
uint8 base_state\n\
uint8 control_mode\n\
uint16 fault_code\n\
float64 battery_voltage\n\
\n\
# motor state\n\
UartTracerMotorState[2] motor_states\n\
\n\
# light state\n\
bool light_control_enabled\n\
TracerLightState front_light_state\n\
TracerLightState rear_light_state\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: tracer_msgs/UartTracerMotorState\n\
float64 current\n\
float64 rpm\n\
float64 temperature\n\
\n\
================================================================================\n\
MSG: tracer_msgs/TracerLightState\n\
uint8 mode\n\
uint8 custom_value\n\
";
  }

  static const char* value(const ::tracer_msgs::UartTracerStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.linear_velocity);
      stream.next(m.angular_velocity);
      stream.next(m.base_state);
      stream.next(m.control_mode);
      stream.next(m.fault_code);
      stream.next(m.battery_voltage);
      stream.next(m.motor_states);
      stream.next(m.light_control_enabled);
      stream.next(m.front_light_state);
      stream.next(m.rear_light_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UartTracerStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tracer_msgs::UartTracerStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tracer_msgs::UartTracerStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "linear_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.linear_velocity);
    s << indent << "angular_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "base_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.base_state);
    s << indent << "control_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_mode);
    s << indent << "fault_code: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.fault_code);
    s << indent << "battery_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.battery_voltage);
    s << indent << "motor_states[]" << std::endl;
    for (size_t i = 0; i < v.motor_states.size(); ++i)
    {
      s << indent << "  motor_states[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::tracer_msgs::UartTracerMotorState_<ContainerAllocator> >::stream(s, indent + "    ", v.motor_states[i]);
    }
    s << indent << "light_control_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.light_control_enabled);
    s << indent << "front_light_state: ";
    s << std::endl;
    Printer< ::tracer_msgs::TracerLightState_<ContainerAllocator> >::stream(s, indent + "  ", v.front_light_state);
    s << indent << "rear_light_state: ";
    s << std::endl;
    Printer< ::tracer_msgs::TracerLightState_<ContainerAllocator> >::stream(s, indent + "  ", v.rear_light_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRACER_MSGS_MESSAGE_UARTTRACERSTATUS_H
