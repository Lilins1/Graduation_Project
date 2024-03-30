; Auto-generated. Do not edit!


(cl:in-package pi_car-srv)


;//! \htmlinclude String-request.msg.html

(cl:defclass <String-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass String-request (<String-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pi_car-srv:<String-request> is deprecated: use pi_car-srv:String-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <String-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_car-srv:input-val is deprecated.  Use pi_car-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String-request>) ostream)
  "Serializes a message object of type '<String-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String-request>) istream)
  "Deserializes a message object of type '<String-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String-request>)))
  "Returns string type for a service object of type '<String-request>"
  "pi_car/StringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String-request)))
  "Returns string type for a service object of type 'String-request"
  "pi_car/StringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String-request>)))
  "Returns md5sum for a message object of type '<String-request>"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String-request)))
  "Returns md5sum for a message object of type 'String-request"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String-request>)))
  "Returns full string definition for message of type '<String-request>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String-request)))
  "Returns full string definition for message of type 'String-request"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String-request>))
  "Converts a ROS message object to a list"
  (cl:list 'String-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude String-response.msg.html

(cl:defclass <String-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass String-response (<String-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pi_car-srv:<String-response> is deprecated: use pi_car-srv:String-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <String-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pi_car-srv:output-val is deprecated.  Use pi_car-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String-response>) ostream)
  "Serializes a message object of type '<String-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String-response>) istream)
  "Deserializes a message object of type '<String-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String-response>)))
  "Returns string type for a service object of type '<String-response>"
  "pi_car/StringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String-response)))
  "Returns string type for a service object of type 'String-response"
  "pi_car/StringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String-response>)))
  "Returns md5sum for a message object of type '<String-response>"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String-response)))
  "Returns md5sum for a message object of type 'String-response"
  "c63e85f503b805d84df783e71c6bb0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String-response>)))
  "Returns full string definition for message of type '<String-response>"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String-response)))
  "Returns full string definition for message of type 'String-response"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String-response>))
  "Converts a ROS message object to a list"
  (cl:list 'String-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'String)))
  'String-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'String)))
  'String-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String)))
  "Returns string type for a service object of type '<String>"
  "pi_car/String")