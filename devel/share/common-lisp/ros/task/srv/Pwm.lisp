; Auto-generated. Do not edit!


(cl:in-package task-srv)


;//! \htmlinclude Pwm-request.msg.html

(cl:defclass <Pwm-request> (roslisp-msg-protocol:ros-message)
  ((set_duty
    :reader set_duty
    :initarg :set_duty
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pwm-request (<Pwm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pwm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pwm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Pwm-request> is deprecated: use task-srv:Pwm-request instead.")))

(cl:ensure-generic-function 'set_duty-val :lambda-list '(m))
(cl:defmethod set_duty-val ((m <Pwm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:set_duty-val is deprecated.  Use task-srv:set_duty instead.")
  (set_duty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pwm-request>) ostream)
  "Serializes a message object of type '<Pwm-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pwm-request>) istream)
  "Deserializes a message object of type '<Pwm-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_duty) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pwm-request>)))
  "Returns string type for a service object of type '<Pwm-request>"
  "task/PwmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pwm-request)))
  "Returns string type for a service object of type 'Pwm-request"
  "task/PwmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pwm-request>)))
  "Returns md5sum for a message object of type '<Pwm-request>"
  "2cf059adcc761a1dfe88251e9a131afb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pwm-request)))
  "Returns md5sum for a message object of type 'Pwm-request"
  "2cf059adcc761a1dfe88251e9a131afb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pwm-request>)))
  "Returns full string definition for message of type '<Pwm-request>"
  (cl:format cl:nil "float32 set_duty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pwm-request)))
  "Returns full string definition for message of type 'Pwm-request"
  (cl:format cl:nil "float32 set_duty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pwm-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pwm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pwm-request
    (cl:cons ':set_duty (set_duty msg))
))
;//! \htmlinclude Pwm-response.msg.html

(cl:defclass <Pwm-response> (roslisp-msg-protocol:ros-message)
  ((now_duty
    :reader now_duty
    :initarg :now_duty
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pwm-response (<Pwm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pwm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pwm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Pwm-response> is deprecated: use task-srv:Pwm-response instead.")))

(cl:ensure-generic-function 'now_duty-val :lambda-list '(m))
(cl:defmethod now_duty-val ((m <Pwm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:now_duty-val is deprecated.  Use task-srv:now_duty instead.")
  (now_duty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pwm-response>) ostream)
  "Serializes a message object of type '<Pwm-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'now_duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pwm-response>) istream)
  "Deserializes a message object of type '<Pwm-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'now_duty) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pwm-response>)))
  "Returns string type for a service object of type '<Pwm-response>"
  "task/PwmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pwm-response)))
  "Returns string type for a service object of type 'Pwm-response"
  "task/PwmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pwm-response>)))
  "Returns md5sum for a message object of type '<Pwm-response>"
  "2cf059adcc761a1dfe88251e9a131afb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pwm-response)))
  "Returns md5sum for a message object of type 'Pwm-response"
  "2cf059adcc761a1dfe88251e9a131afb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pwm-response>)))
  "Returns full string definition for message of type '<Pwm-response>"
  (cl:format cl:nil "float32 now_duty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pwm-response)))
  "Returns full string definition for message of type 'Pwm-response"
  (cl:format cl:nil "float32 now_duty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pwm-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pwm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pwm-response
    (cl:cons ':now_duty (now_duty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pwm)))
  'Pwm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pwm)))
  'Pwm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pwm)))
  "Returns string type for a service object of type '<Pwm>"
  "task/Pwm")