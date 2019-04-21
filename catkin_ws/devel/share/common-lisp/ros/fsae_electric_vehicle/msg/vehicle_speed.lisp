; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude vehicle_speed.msg.html

(cl:defclass <vehicle_speed> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass vehicle_speed (<vehicle_speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vehicle_speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vehicle_speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<vehicle_speed> is deprecated: use fsae_electric_vehicle-msg:vehicle_speed instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <vehicle_speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:value-val is deprecated.  Use fsae_electric_vehicle-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vehicle_speed>) ostream)
  "Serializes a message object of type '<vehicle_speed>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vehicle_speed>) istream)
  "Deserializes a message object of type '<vehicle_speed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vehicle_speed>)))
  "Returns string type for a message object of type '<vehicle_speed>"
  "fsae_electric_vehicle/vehicle_speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vehicle_speed)))
  "Returns string type for a message object of type 'vehicle_speed"
  "fsae_electric_vehicle/vehicle_speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vehicle_speed>)))
  "Returns md5sum for a message object of type '<vehicle_speed>"
  "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vehicle_speed)))
  "Returns md5sum for a message object of type 'vehicle_speed"
  "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vehicle_speed>)))
  "Returns full string definition for message of type '<vehicle_speed>"
  (cl:format cl:nil "float32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vehicle_speed)))
  "Returns full string definition for message of type 'vehicle_speed"
  (cl:format cl:nil "float32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vehicle_speed>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vehicle_speed>))
  "Converts a ROS message object to a list"
  (cl:list 'vehicle_speed
    (cl:cons ':value (value msg))
))
