; Auto-generated. Do not edit!


(cl:in-package task-srv)


;//! \htmlinclude Uart-request.msg.html

(cl:defclass <Uart-request> (roslisp-msg-protocol:ros-message)
  ((send
    :reader send
    :initarg :send
    :type cl:string
    :initform ""))
)

(cl:defclass Uart-request (<Uart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Uart-request> is deprecated: use task-srv:Uart-request instead.")))

(cl:ensure-generic-function 'send-val :lambda-list '(m))
(cl:defmethod send-val ((m <Uart-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:send-val is deprecated.  Use task-srv:send instead.")
  (send m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uart-request>) ostream)
  "Serializes a message object of type '<Uart-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'send))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'send))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uart-request>) istream)
  "Deserializes a message object of type '<Uart-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'send) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uart-request>)))
  "Returns string type for a service object of type '<Uart-request>"
  "task/UartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uart-request)))
  "Returns string type for a service object of type 'Uart-request"
  "task/UartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uart-request>)))
  "Returns md5sum for a message object of type '<Uart-request>"
  "947ef8842683fa73741f136ee7bdbba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uart-request)))
  "Returns md5sum for a message object of type 'Uart-request"
  "947ef8842683fa73741f136ee7bdbba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uart-request>)))
  "Returns full string definition for message of type '<Uart-request>"
  (cl:format cl:nil "string send~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uart-request)))
  "Returns full string definition for message of type 'Uart-request"
  (cl:format cl:nil "string send~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uart-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'send))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Uart-request
    (cl:cons ':send (send msg))
))
;//! \htmlinclude Uart-response.msg.html

(cl:defclass <Uart-response> (roslisp-msg-protocol:ros-message)
  ((sendmsg
    :reader sendmsg
    :initarg :sendmsg
    :type cl:string
    :initform ""))
)

(cl:defclass Uart-response (<Uart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Uart-response> is deprecated: use task-srv:Uart-response instead.")))

(cl:ensure-generic-function 'sendmsg-val :lambda-list '(m))
(cl:defmethod sendmsg-val ((m <Uart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:sendmsg-val is deprecated.  Use task-srv:sendmsg instead.")
  (sendmsg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uart-response>) ostream)
  "Serializes a message object of type '<Uart-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sendmsg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sendmsg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uart-response>) istream)
  "Deserializes a message object of type '<Uart-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sendmsg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sendmsg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uart-response>)))
  "Returns string type for a service object of type '<Uart-response>"
  "task/UartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uart-response)))
  "Returns string type for a service object of type 'Uart-response"
  "task/UartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uart-response>)))
  "Returns md5sum for a message object of type '<Uart-response>"
  "947ef8842683fa73741f136ee7bdbba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uart-response)))
  "Returns md5sum for a message object of type 'Uart-response"
  "947ef8842683fa73741f136ee7bdbba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uart-response>)))
  "Returns full string definition for message of type '<Uart-response>"
  (cl:format cl:nil "string sendmsg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uart-response)))
  "Returns full string definition for message of type 'Uart-response"
  (cl:format cl:nil "string sendmsg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uart-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sendmsg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Uart-response
    (cl:cons ':sendmsg (sendmsg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Uart)))
  'Uart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Uart)))
  'Uart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uart)))
  "Returns string type for a service object of type '<Uart>"
  "task/Uart")