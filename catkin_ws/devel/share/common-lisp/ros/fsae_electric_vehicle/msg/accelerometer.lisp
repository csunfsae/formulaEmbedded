; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude accelerometer.msg.html

(cl:defclass <accelerometer> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass accelerometer (<accelerometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <accelerometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'accelerometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<accelerometer> is deprecated: use fsae_electric_vehicle-msg:accelerometer instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:x-val is deprecated.  Use fsae_electric_vehicle-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:y-val is deprecated.  Use fsae_electric_vehicle-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:z-val is deprecated.  Use fsae_electric_vehicle-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <accelerometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:time-val is deprecated.  Use fsae_electric_vehicle-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <accelerometer>) ostream)
  "Serializes a message object of type '<accelerometer>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <accelerometer>) istream)
  "Deserializes a message object of type '<accelerometer>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<accelerometer>)))
  "Returns string type for a message object of type '<accelerometer>"
  "fsae_electric_vehicle/accelerometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'accelerometer)))
  "Returns string type for a message object of type 'accelerometer"
  "fsae_electric_vehicle/accelerometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<accelerometer>)))
  "Returns md5sum for a message object of type '<accelerometer>"
  "093e31f85644998fb59a959954c3fd8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'accelerometer)))
  "Returns md5sum for a message object of type 'accelerometer"
  "093e31f85644998fb59a959954c3fd8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<accelerometer>)))
  "Returns full string definition for message of type '<accelerometer>"
  (cl:format cl:nil "float32 x ~%float32 y ~%float32 z ~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'accelerometer)))
  "Returns full string definition for message of type 'accelerometer"
  (cl:format cl:nil "float32 x ~%float32 y ~%float32 z ~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <accelerometer>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <accelerometer>))
  "Converts a ROS message object to a list"
  (cl:list 'accelerometer
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':time (time msg))
))
