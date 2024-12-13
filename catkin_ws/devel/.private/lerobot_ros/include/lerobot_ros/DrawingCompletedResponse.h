// Generated by gencpp from file lerobot_ros/DrawingCompletedResponse.msg
// DO NOT EDIT!


#ifndef LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETEDRESPONSE_H
#define LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETEDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lerobot_ros
{
template <class ContainerAllocator>
struct DrawingCompletedResponse_
{
  typedef DrawingCompletedResponse_<ContainerAllocator> Type;

  DrawingCompletedResponse_()
    : success(false)  {
    }
  DrawingCompletedResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DrawingCompletedResponse_

typedef ::lerobot_ros::DrawingCompletedResponse_<std::allocator<void> > DrawingCompletedResponse;

typedef boost::shared_ptr< ::lerobot_ros::DrawingCompletedResponse > DrawingCompletedResponsePtr;
typedef boost::shared_ptr< ::lerobot_ros::DrawingCompletedResponse const> DrawingCompletedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator1> & lhs, const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator1> & lhs, const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lerobot_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lerobot_ros/DrawingCompletedResponse";
  }

  static const char* value(const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DrawingCompletedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lerobot_ros::DrawingCompletedResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEROBOT_ROS_MESSAGE_DRAWINGCOMPLETEDRESPONSE_H
