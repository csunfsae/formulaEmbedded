; Auto-generated. Do not edit!


(cl:in-package fsae_electric_vehicle-msg)


;//! \htmlinclude suspension_offset.msg.html

(cl:defclass <suspension_offset> (roslisp-msg-protocol:ros-message)
  ((front_left_value
    :reader front_left_value
    :initarg :front_left_value
    :type cl:float
    :initform 0.0)
   (front_left_time
    :reader front_left_time
    :initarg :front_left_time
    :type cl:string
    :initform "")
   (front_right_value
    :reader front_right_value
    :initarg :front_right_value
    :type cl:float
    :initform 0.0)
   (front_right_time
    :reader front_right_time
    :initarg :front_right_time
    :type cl:string
    :initform "")
   (back_left_value
    :reader back_left_value
    :initarg :back_left_value
    :type cl:float
    :initform 0.0)
   (back_left_time
    :reader back_left_time
    :initarg :back_left_time
    :type cl:string
    :initform "")
   (back_right_value
    :reader back_right_value
    :initarg :back_right_value
    :type cl:float
    :initform 0.0)
   (back_right_time
    :reader back_right_time
    :initarg :back_right_time
    :type cl:string
    :initform ""))
)

(cl:defclass suspension_offset (<suspension_offset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <suspension_offset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'suspension_offset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fsae_electric_vehicle-msg:<suspension_offset> is deprecated: use fsae_electric_vehicle-msg:suspension_offset instead.")))

(cl:ensure-generic-function 'front_left_value-val :lambda-list '(m))
(cl:defmethod front_left_value-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:front_left_value-val is deprecated.  Use fsae_electric_vehicle-msg:front_left_value instead.")
  (front_left_value m))

(cl:ensure-generic-function 'front_left_time-val :lambda-list '(m))
(cl:defmethod front_left_time-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:front_left_time-val is deprecated.  Use fsae_electric_vehicle-msg:front_left_time instead.")
  (front_left_time m))

(cl:ensure-generic-function 'front_right_value-val :lambda-list '(m))
(cl:defmethod front_right_value-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:front_right_value-val is deprecated.  Use fsae_electric_vehicle-msg:front_right_value instead.")
  (front_right_value m))

(cl:ensure-generic-function 'front_right_time-val :lambda-list '(m))
(cl:defmethod front_right_time-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:front_right_time-val is deprecated.  Use fsae_electric_vehicle-msg:front_right_time instead.")
  (front_right_time m))

(cl:ensure-generic-function 'back_left_value-val :lambda-list '(m))
(cl:defmethod back_left_value-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:back_left_value-val is deprecated.  Use fsae_electric_vehicle-msg:back_left_value instead.")
  (back_left_value m))

(cl:ensure-generic-function 'back_left_time-val :lambda-list '(m))
(cl:defmethod back_left_time-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:back_left_time-val is deprecated.  Use fsae_electric_vehicle-msg:back_left_time instead.")
  (back_left_time m))

(cl:ensure-generic-function 'back_right_value-val :lambda-list '(m))
(cl:defmethod back_right_value-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:back_right_value-val is deprecated.  Use fsae_electric_vehicle-msg:back_right_value instead.")
  (back_right_value m))

(cl:ensure-generic-function 'back_right_time-val :lambda-list '(m))
(cl:defmethod back_right_time-val ((m <suspension_offset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fsae_electric_vehicle-msg:back_right_time-val is deprecated.  Use fsae_electric_vehicle-msg:back_right_time instead.")
  (back_right_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <suspension_offset>) ostream)
  "Serializes a message object of type '<suspension_offset>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_left_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'front_left_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'front_left_time))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'front_right_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'front_right_time))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'back_left_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'back_left_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'back_left_time))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'back_right_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'back_right_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'back_right_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <suspension_offset>) istream)
  "Deserializes a message object of type '<suspension_offset>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_left_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'front_left_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_right_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'front_right_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_left_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_left_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'back_left_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_right_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_right_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'back_right_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<suspension_offset>)))
  "Returns string type for a message object of type '<suspension_offset>"
  "fsae_electric_vehicle/suspension_offset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'suspension_offset)))
  "Returns string type for a message object of type 'suspension_offset"
  "fsae_electric_vehicle/suspension_offset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<suspension_offset>)))
  "Returns md5sum for a message object of type '<suspension_offset>"
  "8a6ea563b0ec5361d7adcaeba167aaab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'suspension_offset)))
  "Returns md5sum for a message object of type 'suspension_offset"
  "8a6ea563b0ec5361d7adcaeba167aaab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<suspension_offset>)))
  "Returns full string definition for message of type '<suspension_offset>"
  (cl:format cl:nil "float32 front_left_value ~%string front_left_time ~%float32 front_right_value ~%string front_right_time ~%float32 back_left_value ~%string back_left_time ~%float32 back_right_value ~%string back_right_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'suspension_offset)))
  "Returns full string definition for message of type 'suspension_offset"
  (cl:format cl:nil "float32 front_left_value ~%string front_left_time ~%float32 front_right_value ~%string front_right_time ~%float32 back_left_value ~%string back_left_time ~%float32 back_right_value ~%string back_right_time ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <suspension_offset>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'front_left_time))
     4
     4 (cl:length (cl:slot-value msg 'front_right_time))
     4
     4 (cl:length (cl:slot-value msg 'back_left_time))
     4
     4 (cl:length (cl:slot-value msg 'back_right_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <suspension_offset>))
  "Converts a ROS message object to a list"
  (cl:list 'suspension_offset
    (cl:cons ':front_left_value (front_left_value msg))
    (cl:cons ':front_left_time (front_left_time msg))
    (cl:cons ':front_right_value (front_right_value msg))
    (cl:cons ':front_right_time (front_right_time msg))
    (cl:cons ':back_left_value (back_left_value msg))
    (cl:cons ':back_left_time (back_left_time msg))
    (cl:cons ':back_right_value (back_right_value msg))
    (cl:cons ':back_right_time (back_right_time msg))
))
