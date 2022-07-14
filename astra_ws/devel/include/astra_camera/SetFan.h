// Generated by gencpp from file astra_camera/SetFan.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_SETFAN_H
#define ASTRA_CAMERA_MESSAGE_SETFAN_H

#include <ros/service_traits.h>


#include <astra_camera/SetFanRequest.h>
#include <astra_camera/SetFanResponse.h>


namespace astra_camera
{

struct SetFan
{

typedef SetFanRequest Request;
typedef SetFanResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetFan
} // namespace astra_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::astra_camera::SetFan > {
  static const char* value()
  {
    return "8c1211af706069c994c06e00eb59ac9e";
  }

  static const char* value(const ::astra_camera::SetFan&) { return value(); }
};

template<>
struct DataType< ::astra_camera::SetFan > {
  static const char* value()
  {
    return "astra_camera/SetFan";
  }

  static const char* value(const ::astra_camera::SetFan&) { return value(); }
};


// service_traits::MD5Sum< ::astra_camera::SetFanRequest> should match 
// service_traits::MD5Sum< ::astra_camera::SetFan > 
template<>
struct MD5Sum< ::astra_camera::SetFanRequest>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::SetFan >::value();
  }
  static const char* value(const ::astra_camera::SetFanRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::SetFanRequest> should match 
// service_traits::DataType< ::astra_camera::SetFan > 
template<>
struct DataType< ::astra_camera::SetFanRequest>
{
  static const char* value()
  {
    return DataType< ::astra_camera::SetFan >::value();
  }
  static const char* value(const ::astra_camera::SetFanRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::astra_camera::SetFanResponse> should match 
// service_traits::MD5Sum< ::astra_camera::SetFan > 
template<>
struct MD5Sum< ::astra_camera::SetFanResponse>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::SetFan >::value();
  }
  static const char* value(const ::astra_camera::SetFanResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::SetFanResponse> should match 
// service_traits::DataType< ::astra_camera::SetFan > 
template<>
struct DataType< ::astra_camera::SetFanResponse>
{
  static const char* value()
  {
    return DataType< ::astra_camera::SetFan >::value();
  }
  static const char* value(const ::astra_camera::SetFanResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_SETFAN_H
