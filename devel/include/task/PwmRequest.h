// Generated by gencpp from file task/PwmRequest.msg
// DO NOT EDIT!


#ifndef TASK_MESSAGE_PWMREQUEST_H
#define TASK_MESSAGE_PWMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace task
{
template <class ContainerAllocator>
struct PwmRequest_
{
  typedef PwmRequest_<ContainerAllocator> Type;

  PwmRequest_()
    : set_duty(0.0)  {
    }
  PwmRequest_(const ContainerAllocator& _alloc)
    : set_duty(0.0)  {
  (void)_alloc;
    }



   typedef float _set_duty_type;
  _set_duty_type set_duty;





  typedef boost::shared_ptr< ::task::PwmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task::PwmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PwmRequest_

typedef ::task::PwmRequest_<std::allocator<void> > PwmRequest;

typedef boost::shared_ptr< ::task::PwmRequest > PwmRequestPtr;
typedef boost::shared_ptr< ::task::PwmRequest const> PwmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task::PwmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task::PwmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task::PwmRequest_<ContainerAllocator1> & lhs, const ::task::PwmRequest_<ContainerAllocator2> & rhs)
{
  return lhs.set_duty == rhs.set_duty;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task::PwmRequest_<ContainerAllocator1> & lhs, const ::task::PwmRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::task::PwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task::PwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task::PwmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task::PwmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task::PwmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task::PwmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task::PwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a68827450fc12cf24871d1ae3051699";
  }

  static const char* value(const ::task::PwmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a68827450fc12cfULL;
  static const uint64_t static_value2 = 0x24871d1ae3051699ULL;
};

template<class ContainerAllocator>
struct DataType< ::task::PwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task/PwmRequest";
  }

  static const char* value(const ::task::PwmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task::PwmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 set_duty\n"
;
  }

  static const char* value(const ::task::PwmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task::PwmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.set_duty);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PwmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task::PwmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task::PwmRequest_<ContainerAllocator>& v)
  {
    s << indent << "set_duty: ";
    Printer<float>::stream(s, indent + "  ", v.set_duty);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK_MESSAGE_PWMREQUEST_H
