; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude temp_and_pressure.msg.html

(cl:defclass <temp_and_pressure> (roslisp-msg-protocol:ros-message)
  ((temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass temp_and_pressure (<temp_and_pressure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <temp_and_pressure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'temp_and_pressure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<temp_and_pressure> is deprecated: use fsae_electric_vehicle-msg:temp_and_pressure instead.")))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <temp_and_pressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:temp-val is deprecated.  Use fsae_electric_vehicle-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <temp_and_pressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:pressure-val is deprecated.  Use fsae_electric_vehicle-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <temp_and_pressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:time-val is deprecated.  Use fsae_electric_vehicle-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <temp_and_pressure>) ostream)
  "Serializes a message object of type '<temp_and_pressure>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <temp_and_pressure>) istream)
  "Deserializes a message object of type '<temp_and_pressure>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<temp_and_pressure>)))
  "Returns string type for a message object of type '<temp_and_pressure>"
  "fsae_electric_vehicle/temp_and_pressure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'temp_and_pressure)))
  "Returns string type for a message object of type 'temp_and_pressure"
  "fsae_electric_vehicle/temp_and_pressure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<temp_and_pressure>)))
  "Returns md5sum for a message object of type '<temp_and_pressure>"
  "26c525dcd35afdc9fbc0cf3502593e9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'temp_and_pressure)))
  "Returns md5sum for a message object of type 'temp_and_pressure"
  "26c525dcd35afdc9fbc0cf3502593e9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<temp_and_pressure>)))
  "Returns full string definition for message of type '<temp_and_pressure>"
  (cl:format cl:nil "float32 temp~%float32 pressure~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'temp_and_pressure)))
  "Returns full string definition for message of type 'temp_and_pressure"
  (cl:format cl:nil "float32 temp~%float32 pressure~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <temp_and_pressure>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <temp_and_pressure>))
  "Converts a ROS message object to a list"
  (cl:list 'temp_and_pressure
    (cl:cons ':temp (temp msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':time (time msg))
))
