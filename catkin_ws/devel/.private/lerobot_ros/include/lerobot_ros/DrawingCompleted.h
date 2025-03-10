// Generated by gencpp from file lerobot_ros/DrawingCompleted.msg
// DO NOT EDIT!


#ifndef LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETED_H
#define LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETED_H

#include <ros/service_traits.h>


#include <lerobot_ros/DrawingCompletedRequest.h>
#include <lerobot_ros/DrawingCompletedResponse.h>


namespace lerobot_ros
{

struct DrawingCompleted
{

typedef DrawingCompletedRequest Request;
typedef DrawingCompletedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DrawingCompleted
} // namespace lerobot_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lerobot_ros::DrawingCompleted > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::lerobot_ros::DrawingCompleted&) { return value(); }
};

template<>
struct DataType< ::lerobot_ros::DrawingCompleted > {
  static const char* value()
  {
    return "lerobot_ros/DrawingCompleted";
  }

  static const char* value(const ::lerobot_ros::DrawingCompleted&) { return value(); }
};


// service_traits::MD5Sum< ::lerobot_ros::DrawingCompletedRequest> should match
// service_traits::MD5Sum< ::lerobot_ros::DrawingCompleted >
template<>
struct MD5Sum< ::lerobot_ros::DrawingCompletedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lerobot_ros::DrawingCompleted >::value();
  }
  static const char* value(const ::lerobot_ros::DrawingCompletedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lerobot_ros::DrawingCompletedRequest> should match
// service_traits::DataType< ::lerobot_ros::DrawingCompleted >
template<>
struct DataType< ::lerobot_ros::DrawingCompletedRequest>
{
  static const char* value()
  {
    return DataType< ::lerobot_ros::DrawingCompleted >::value();
  }
  static const char* value(const ::lerobot_ros::DrawingCompletedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lerobot_ros::DrawingCompletedResponse> should match
// service_traits::MD5Sum< ::lerobot_ros::DrawingCompleted >
template<>
struct MD5Sum< ::lerobot_ros::DrawingCompletedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lerobot_ros::DrawingCompleted >::value();
  }
  static const char* value(const ::lerobot_ros::DrawingCompletedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lerobot_ros::DrawingCompletedResponse> should match
// service_traits::DataType< ::lerobot_ros::DrawingCompleted >
template<>
struct DataType< ::lerobot_ros::DrawingCompletedResponse>
{
  static const char* value()
  {
    return DataType< ::lerobot_ros::DrawingCompleted >::value();
  }
  static const char* value(const ::lerobot_ros::DrawingCompletedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETED_H
