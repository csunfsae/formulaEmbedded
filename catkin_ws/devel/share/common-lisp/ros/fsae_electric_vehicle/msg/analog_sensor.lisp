; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude analog_sensor.msg.html

(cl:defclass <analog_sensor> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass analog_sensor (<analog_sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <analog_sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'analog_sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<analog_sensor> is deprecated: use fsae_electric_vehicle-msg:analog_sensor instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <analog_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:value-val is deprecated.  Use fsae_electric_vehicle-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <analog_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:time-val is deprecated.  Use fsae_electric_vehicle-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <analog_sensor>) ostream)
  "Serializes a message object of type '<analog_sensor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <analog_sensor>) istream)
  "Deserializes a message object of type '<analog_sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<analog_sensor>)))
  "Returns string type for a message object of type '<analog_sensor>"
  "fsae_electric_vehicle/analog_sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'analog_sensor)))
  "Returns string type for a message object of type 'analog_sensor"
  "fsae_electric_vehicle/analog_sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<analog_sensor>)))
  "Returns md5sum for a message object of type '<analog_sensor>"
  "efaa27c9229f431a06b62922d8b71027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'analog_sensor)))
  "Returns md5sum for a message object of type 'analog_sensor"
  "efaa27c9229f431a06b62922d8b71027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<analog_sensor>)))
  "Returns full string definition for message of type '<analog_sensor>"
  (cl:format cl:nil "float32 value~%string time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'analog_sensor)))
  "Returns full string definition for message of type 'analog_sensor"
  (cl:format cl:nil "float32 value~%string time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <analog_sensor>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <analog_sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'analog_sensor
    (cl:cons ':value (value msg))
    (cl:cons ':time (time msg))
))
