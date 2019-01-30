; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude steering_input.msg.html

(cl:defclass <steering_input> (roslisp-msg-protocol:ros-message)
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

(cl:defclass steering_input (<steering_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <steering_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'steering_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<steering_input> is deprecated: use fsae_electric_vehicle-msg:steering_input instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <steering_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:value-val is deprecated.  Use fsae_electric_vehicle-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <steering_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:time-val is deprecated.  Use fsae_electric_vehicle-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <steering_input>) ostream)
  "Serializes a message object of type '<steering_input>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <steering_input>) istream)
  "Deserializes a message object of type '<steering_input>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<steering_input>)))
  "Returns string type for a message object of type '<steering_input>"
  "fsae_electric_vehicle/steering_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'steering_input)))
  "Returns string type for a message object of type 'steering_input"
  "fsae_electric_vehicle/steering_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<steering_input>)))
  "Returns md5sum for a message object of type '<steering_input>"
  "efaa27c9229f431a06b62922d8b71027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'steering_input)))
  "Returns md5sum for a message object of type 'steering_input"
  "efaa27c9229f431a06b62922d8b71027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<steering_input>)))
  "Returns full string definition for message of type '<steering_input>"
  (cl:format cl:nil "float32 value ~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'steering_input)))
  "Returns full string definition for message of type 'steering_input"
  (cl:format cl:nil "float32 value ~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <steering_input>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <steering_input>))
  "Converts a ROS message object to a list"
  (cl:list 'steering_input
    (cl:cons ':value (value msg))
    (cl:cons ':time (time msg))
))
