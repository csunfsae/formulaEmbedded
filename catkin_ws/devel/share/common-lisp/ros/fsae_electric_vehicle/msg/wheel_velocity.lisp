; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude wheel_velocity.msg.html

(cl:defclass <wheel_velocity> (roslisp-msg-protocol:ros-message)
  ((Value
    :reader Value
    :initarg :Value
    :type cl:string
    :initform ""))
)

(cl:defclass wheel_velocity (<wheel_velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheel_velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheel_velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<wheel_velocity> is deprecated: use fsae_electric_vehicle-msg:wheel_velocity instead.")))

(cl:ensure-generic-function 'Value-val :lambda-list '(m))
(cl:defmethod Value-val ((m <wheel_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:Value-val is deprecated.  Use fsae_electric_vehicle-msg:Value instead.")
  (Value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheel_velocity>) ostream)
  "Serializes a message object of type '<wheel_velocity>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheel_velocity>) istream)
  "Deserializes a message object of type '<wheel_velocity>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheel_velocity>)))
  "Returns string type for a message object of type '<wheel_velocity>"
  "fsae_electric_vehicle/wheel_velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheel_velocity)))
  "Returns string type for a message object of type 'wheel_velocity"
  "fsae_electric_vehicle/wheel_velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheel_velocity>)))
  "Returns md5sum for a message object of type '<wheel_velocity>"
  "c39d4884ea4866f0b5cd78380dec7bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheel_velocity)))
  "Returns md5sum for a message object of type 'wheel_velocity"
  "c39d4884ea4866f0b5cd78380dec7bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheel_velocity>)))
  "Returns full string definition for message of type '<wheel_velocity>"
  (cl:format cl:nil "string Value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheel_velocity)))
  "Returns full string definition for message of type 'wheel_velocity"
  (cl:format cl:nil "string Value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheel_velocity>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheel_velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'wheel_velocity
    (cl:cons ':Value (Value msg))
))
