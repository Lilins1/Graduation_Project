; Auto-generated. Do not edit!


(cl:in-package task-srv)


;//! \htmlinclude Io-request.msg.html

(cl:defclass <Io-request> (roslisp-msg-protocol:ros-message)
  ((set_state
    :reader set_state
    :initarg :set_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Io-request (<Io-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Io-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Io-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Io-request> is deprecated: use task-srv:Io-request instead.")))

(cl:ensure-generic-function 'set_state-val :lambda-list '(m))
(cl:defmethod set_state-val ((m <Io-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:set_state-val is deprecated.  Use task-srv:set_state instead.")
  (set_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Io-request>) ostream)
  "Serializes a message object of type '<Io-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Io-request>) istream)
  "Deserializes a message object of type '<Io-request>"
    (cl:setf (cl:slot-value msg 'set_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Io-request>)))
  "Returns string type for a service object of type '<Io-request>"
  "task/IoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Io-request)))
  "Returns string type for a service object of type 'Io-request"
  "task/IoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Io-request>)))
  "Returns md5sum for a message object of type '<Io-request>"
  "e485b43c04e16f65a9831427eefda836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Io-request)))
  "Returns md5sum for a message object of type 'Io-request"
  "e485b43c04e16f65a9831427eefda836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Io-request>)))
  "Returns full string definition for message of type '<Io-request>"
  (cl:format cl:nil "bool set_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Io-request)))
  "Returns full string definition for message of type 'Io-request"
  (cl:format cl:nil "bool set_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Io-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Io-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Io-request
    (cl:cons ':set_state (set_state msg))
))
;//! \htmlinclude Io-response.msg.html

(cl:defclass <Io-response> (roslisp-msg-protocol:ros-message)
  ((now_state
    :reader now_state
    :initarg :now_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Io-response (<Io-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Io-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Io-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task-srv:<Io-response> is deprecated: use task-srv:Io-response instead.")))

(cl:ensure-generic-function 'now_state-val :lambda-list '(m))
(cl:defmethod now_state-val ((m <Io-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task-srv:now_state-val is deprecated.  Use task-srv:now_state instead.")
  (now_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Io-response>) ostream)
  "Serializes a message object of type '<Io-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'now_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Io-response>) istream)
  "Deserializes a message object of type '<Io-response>"
    (cl:setf (cl:slot-value msg 'now_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Io-response>)))
  "Returns string type for a service object of type '<Io-response>"
  "task/IoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Io-response)))
  "Returns string type for a service object of type 'Io-response"
  "task/IoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Io-response>)))
  "Returns md5sum for a message object of type '<Io-response>"
  "e485b43c04e16f65a9831427eefda836")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Io-response)))
  "Returns md5sum for a message object of type 'Io-response"
  "e485b43c04e16f65a9831427eefda836")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Io-response>)))
  "Returns full string definition for message of type '<Io-response>"
  (cl:format cl:nil "bool now_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Io-response)))
  "Returns full string definition for message of type 'Io-response"
  (cl:format cl:nil "bool now_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Io-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Io-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Io-response
    (cl:cons ':now_state (now_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Io)))
  'Io-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Io)))
  'Io-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Io)))
  "Returns string type for a service object of type '<Io>"
  "task/Io")