// Generated by gencpp from file astra_camera/SetAeEnable.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_SETAEENABLE_H
#define ASTRA_CAMERA_MESSAGE_SETAEENABLE_H

#include <ros/service_traits.h>


#include <astra_camera/SetAeEnableRequest.h>
#include <astra_camera/SetAeEnableResponse.h>


namespace astra_camera
{

struct SetAeEnable
{

typedef SetAeEnableRequest Request;
typedef SetAeEnableResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetAeEnable
} // namespace astra_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::astra_camera::SetAeEnable > {
  static const char* value()
  {
    return "8c1211af706069c994c06e00eb59ac9e";
  }

  static const char* value(const ::astra_camera::SetAeEnable&) { return value(); }
};

template<>
struct DataType< ::astra_camera::SetAeEnable > {
  static const char* value()
  {
    return "astra_camera/SetAeEnable";
  }

  static const char* value(const ::astra_camera::SetAeEnable&) { return value(); }
};


// service_traits::MD5Sum< ::astra_camera::SetAeEnableRequest> should match 
// service_traits::MD5Sum< ::astra_camera::SetAeEnable > 
template<>
struct MD5Sum< ::astra_camera::SetAeEnableRequest>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::SetAeEnable >::value();
  }
  static const char* value(const ::astra_camera::SetAeEnableRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::SetAeEnableRequest> should match 
// service_traits::DataType< ::astra_camera::SetAeEnable > 
template<>
struct DataType< ::astra_camera::SetAeEnableRequest>
{
  static const char* value()
  {
    return DataType< ::astra_camera::SetAeEnable >::value();
  }
  static const char* value(const ::astra_camera::SetAeEnableRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::astra_camera::SetAeEnableResponse> should match 
// service_traits::MD5Sum< ::astra_camera::SetAeEnable > 
template<>
struct MD5Sum< ::astra_camera::SetAeEnableResponse>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::SetAeEnable >::value();
  }
  static const char* value(const ::astra_camera::SetAeEnableResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::SetAeEnableResponse> should match 
// service_traits::DataType< ::astra_camera::SetAeEnable > 
template<>
struct DataType< ::astra_camera::SetAeEnableResponse>
{
  static const char* value()
  {
    return DataType< ::astra_camera::SetAeEnable >::value();
  }
  static const char* value(const ::astra_camera::SetAeEnableResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_SETAEENABLE_H