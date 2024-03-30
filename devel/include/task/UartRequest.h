// Generated by gencpp from file task/UartRequest.msg
// DO NOT EDIT!


#ifndef TASK_MESSAGE_UARTREQUEST_H
#define TASK_MESSAGE_UARTREQUEST_H


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
struct UartRequest_
{
  typedef UartRequest_<ContainerAllocator> Type;

  UartRequest_()
    : send()  {
    }
  UartRequest_(const ContainerAllocator& _alloc)
    : send(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _send_type;
  _send_type send;





  typedef boost::shared_ptr< ::task::UartRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::task::UartRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UartRequest_

typedef ::task::UartRequest_<std::allocator<void> > UartRequest;

typedef boost::shared_ptr< ::task::UartRequest > UartRequestPtr;
typedef boost::shared_ptr< ::task::UartRequest const> UartRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::task::UartRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::task::UartRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::task::UartRequest_<ContainerAllocator1> & lhs, const ::task::UartRequest_<ContainerAllocator2> & rhs)
{
  return lhs.send == rhs.send;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::task::UartRequest_<ContainerAllocator1> & lhs, const ::task::UartRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace task

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::task::UartRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::task::UartRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task::UartRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::task::UartRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task::UartRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::task::UartRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::task::UartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b903a44705b40a7116d3d10341f60dfc";
  }

  static const char* value(const ::task::UartRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb903a44705b40a71ULL;
  static const uint64_t static_value2 = 0x16d3d10341f60dfcULL;
};

template<class ContainerAllocator>
struct DataType< ::task::UartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "task/UartRequest";
  }

  static const char* value(const ::task::UartRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::task::UartRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string send\n"
;
  }

  static const char* value(const ::task::UartRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::task::UartRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.send);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UartRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::task::UartRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::task::UartRequest_<ContainerAllocator>& v)
  {
    s << indent << "send: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.send);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TASK_MESSAGE_UARTREQUEST_H
