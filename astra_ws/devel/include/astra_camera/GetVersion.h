// Generated by gencpp from file astra_camera/GetVersion.msg
// DO NOT EDIT!


#ifndef ASTRA_CAMERA_MESSAGE_GETVERSION_H
#define ASTRA_CAMERA_MESSAGE_GETVERSION_H

#include <ros/service_traits.h>


#include <astra_camera/GetVersionRequest.h>
#include <astra_camera/GetVersionResponse.h>


namespace astra_camera
{

struct GetVersion
{

typedef GetVersionRequest Request;
typedef GetVersionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetVersion
} // namespace astra_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::astra_camera::GetVersion > {
  static const char* value()
  {
    return "9dcb65d43afc4a7688056ebe631dc337";
  }

  static const char* value(const ::astra_camera::GetVersion&) { return value(); }
};

template<>
struct DataType< ::astra_camera::GetVersion > {
  static const char* value()
  {
    return "astra_camera/GetVersion";
  }

  static const char* value(const ::astra_camera::GetVersion&) { return value(); }
};


// service_traits::MD5Sum< ::astra_camera::GetVersionRequest> should match 
// service_traits::MD5Sum< ::astra_camera::GetVersion > 
template<>
struct MD5Sum< ::astra_camera::GetVersionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetVersion >::value();
  }
  static const char* value(const ::astra_camera::GetVersionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetVersionRequest> should match 
// service_traits::DataType< ::astra_camera::GetVersion > 
template<>
struct DataType< ::astra_camera::GetVersionRequest>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetVersion >::value();
  }
  static const char* value(const ::astra_camera::GetVersionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::astra_camera::GetVersionResponse> should match 
// service_traits::MD5Sum< ::astra_camera::GetVersion > 
template<>
struct MD5Sum< ::astra_camera::GetVersionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::astra_camera::GetVersion >::value();
  }
  static const char* value(const ::astra_camera::GetVersionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::astra_camera::GetVersionResponse> should match 
// service_traits::DataType< ::astra_camera::GetVersion > 
template<>
struct DataType< ::astra_camera::GetVersionResponse>
{
  static const char* value()
  {
    return DataType< ::astra_camera::GetVersion >::value();
  }
  static const char* value(const ::astra_camera::GetVersionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASTRA_CAMERA_MESSAGE_GETVERSION_H