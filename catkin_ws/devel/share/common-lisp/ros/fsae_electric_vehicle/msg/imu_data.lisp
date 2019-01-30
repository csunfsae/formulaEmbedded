; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude imu_data.msg.html

(cl:defclass <imu_data> (roslisp-msg-protocol:ros-message)
  ((gyro_x
    :reader gyro_x
    :initarg :gyro_x
    :type cl:float
    :initform 0.0)
   (gyro_y
    :reader gyro_y
    :initarg :gyro_y
    :type cl:float
    :initform 0.0)
   (gyro_z
    :reader gyro_z
    :initarg :gyro_z
    :type cl:float
    :initform 0.0)
   (gyro_time
    :reader gyro_time
    :initarg :gyro_time
    :type cl:string
    :initform "")
   (accel_x
    :reader accel_x
    :initarg :accel_x
    :type cl:float
    :initform 0.0)
   (accel_y
    :reader accel_y
    :initarg :accel_y
    :type cl:float
    :initform 0.0)
   (accel_z
    :reader accel_z
    :initarg :accel_z
    :type cl:float
    :initform 0.0)
   (accel_time
    :reader accel_time
    :initarg :accel_time
    :type cl:string
    :initform "")
   (compass_x
    :reader compass_x
    :initarg :compass_x
    :type cl:float
    :initform 0.0)
   (compass_y
    :reader compass_y
    :initarg :compass_y
    :type cl:float
    :initform 0.0)
   (compass_z
    :reader compass_z
    :initarg :compass_z
    :type cl:float
    :initform 0.0)
   (compass_time
    :reader compass_time
    :initarg :compass_time
    :type cl:string
    :initform ""))
)

(cl:defclass imu_data (<imu_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<imu_data> is deprecated: use fsae_electric_vehicle-msg:imu_data instead.")))

(cl:ensure-generic-function 'gyro_x-val :lambda-list '(m))
(cl:defmethod gyro_x-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:gyro_x-val is deprecated.  Use fsae_electric_vehicle-msg:gyro_x instead.")
  (gyro_x m))

(cl:ensure-generic-function 'gyro_y-val :lambda-list '(m))
(cl:defmethod gyro_y-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:gyro_y-val is deprecated.  Use fsae_electric_vehicle-msg:gyro_y instead.")
  (gyro_y m))

(cl:ensure-generic-function 'gyro_z-val :lambda-list '(m))
(cl:defmethod gyro_z-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:gyro_z-val is deprecated.  Use fsae_electric_vehicle-msg:gyro_z instead.")
  (gyro_z m))

(cl:ensure-generic-function 'gyro_time-val :lambda-list '(m))
(cl:defmethod gyro_time-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:gyro_time-val is deprecated.  Use fsae_electric_vehicle-msg:gyro_time instead.")
  (gyro_time m))

(cl:ensure-generic-function 'accel_x-val :lambda-list '(m))
(cl:defmethod accel_x-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:accel_x-val is deprecated.  Use fsae_electric_vehicle-msg:accel_x instead.")
  (accel_x m))

(cl:ensure-generic-function 'accel_y-val :lambda-list '(m))
(cl:defmethod accel_y-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:accel_y-val is deprecated.  Use fsae_electric_vehicle-msg:accel_y instead.")
  (accel_y m))

(cl:ensure-generic-function 'accel_z-val :lambda-list '(m))
(cl:defmethod accel_z-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:accel_z-val is deprecated.  Use fsae_electric_vehicle-msg:accel_z instead.")
  (accel_z m))

(cl:ensure-generic-function 'accel_time-val :lambda-list '(m))
(cl:defmethod accel_time-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:accel_time-val is deprecated.  Use fsae_electric_vehicle-msg:accel_time instead.")
  (accel_time m))

(cl:ensure-generic-function 'compass_x-val :lambda-list '(m))
(cl:defmethod compass_x-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:compass_x-val is deprecated.  Use fsae_electric_vehicle-msg:compass_x instead.")
  (compass_x m))

(cl:ensure-generic-function 'compass_y-val :lambda-list '(m))
(cl:defmethod compass_y-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:compass_y-val is deprecated.  Use fsae_electric_vehicle-msg:compass_y instead.")
  (compass_y m))

(cl:ensure-generic-function 'compass_z-val :lambda-list '(m))
(cl:defmethod compass_z-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:compass_z-val is deprecated.  Use fsae_electric_vehicle-msg:compass_z instead.")
  (compass_z m))

(cl:ensure-generic-function 'compass_time-val :lambda-list '(m))
(cl:defmethod compass_time-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:compass_time-val is deprecated.  Use fsae_electric_vehicle-msg:compass_time instead.")
  (compass_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_data>) ostream)
  "Serializes a message object of type '<imu_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gyro_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gyro_time))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'accel_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'accel_time))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'compass_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'compass_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'compass_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'compass_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'compass_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_data>) istream)
  "Deserializes a message object of type '<imu_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyro_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gyro_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accel_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'accel_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compass_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compass_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'compass_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compass_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'compass_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_data>)))
  "Returns string type for a message object of type '<imu_data>"
  "fsae_electric_vehicle/imu_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_data)))
  "Returns string type for a message object of type 'imu_data"
  "fsae_electric_vehicle/imu_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_data>)))
  "Returns md5sum for a message object of type '<imu_data>"
  "96e2fc03b6486059b9ae94e0a184b112")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_data)))
  "Returns md5sum for a message object of type 'imu_data"
  "96e2fc03b6486059b9ae94e0a184b112")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_data>)))
  "Returns full string definition for message of type '<imu_data>"
  (cl:format cl:nil "float32 gyro_x ~%float32 gyro_y ~%float32 gyro_z ~%string gyro_time~%float32 accel_x ~%float32 accel_y ~%float32 accel_z ~%string accel_time~%float32 compass_x ~%float32 compass_y ~%float32 compass_z ~%string compass_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_data)))
  "Returns full string definition for message of type 'imu_data"
  (cl:format cl:nil "float32 gyro_x ~%float32 gyro_y ~%float32 gyro_z ~%string gyro_time~%float32 accel_x ~%float32 accel_y ~%float32 accel_z ~%string accel_time~%float32 compass_x ~%float32 compass_y ~%float32 compass_z ~%string compass_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_data>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'gyro_time))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'accel_time))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'compass_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_data>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_data
    (cl:cons ':gyro_x (gyro_x msg))
    (cl:cons ':gyro_y (gyro_y msg))
    (cl:cons ':gyro_z (gyro_z msg))
    (cl:cons ':gyro_time (gyro_time msg))
    (cl:cons ':accel_x (accel_x msg))
    (cl:cons ':accel_y (accel_y msg))
    (cl:cons ':accel_z (accel_z msg))
    (cl:cons ':accel_time (accel_time msg))
    (cl:cons ':compass_x (compass_x msg))
    (cl:cons ':compass_y (compass_y msg))
    (cl:cons ':compass_z (compass_z msg))
    (cl:cons ':compass_time (compass_time msg))
))
