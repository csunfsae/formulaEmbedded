;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::gravitational_forces)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'gravitational_forces (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::GRAVITATIONAL_FORCES")
  (make-package "FSAE_ELECTRIC_VEHICLE::GRAVITATIONAL_FORCES"))

(in-package "ROS")
;;//! \htmlinclude gravitational_forces.msg.html


(defclass fsae_electric_vehicle::gravitational_forces
  :super ros::object
  :slots (_gyro_x _gyro_y _gyro_z _gyro_time _accel_x _accel_y _accel_z _accel_time _compass_x _compass_y _compass_z _compass_time ))

(defmethod fsae_electric_vehicle::gravitational_forces
  (:init
   (&key
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    ((:gyro_time __gyro_time) "")
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    ((:accel_time __accel_time) "")
    ((:compass_x __compass_x) 0.0)
    ((:compass_y __compass_y) 0.0)
    ((:compass_z __compass_z) 0.0)
    ((:compass_time __compass_time) "")
    )
   (send-super :init)
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   (setq _gyro_time (string __gyro_time))
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   (setq _accel_time (string __accel_time))
   (setq _compass_x (float __compass_x))
   (setq _compass_y (float __compass_y))
   (setq _compass_z (float __compass_z))
   (setq _compass_time (string __compass_time))
   self)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:gyro_time
   (&optional __gyro_time)
   (if __gyro_time (setq _gyro_time __gyro_time)) _gyro_time)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:accel_time
   (&optional __accel_time)
   (if __accel_time (setq _accel_time __accel_time)) _accel_time)
  (:compass_x
   (&optional __compass_x)
   (if __compass_x (setq _compass_x __compass_x)) _compass_x)
  (:compass_y
   (&optional __compass_y)
   (if __compass_y (setq _compass_y __compass_y)) _compass_y)
  (:compass_z
   (&optional __compass_z)
   (if __compass_z (setq _compass_z __compass_z)) _compass_z)
  (:compass_time
   (&optional __compass_time)
   (if __compass_time (setq _compass_time __compass_time)) _compass_time)
  (:serialization-length
   ()
   (+
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ;; string _gyro_time
    4 (length _gyro_time)
    ;; float32 _accel_x
    4
    ;; float32 _accel_y
    4
    ;; float32 _accel_z
    4
    ;; string _accel_time
    4 (length _accel_time)
    ;; float32 _compass_x
    4
    ;; float32 _compass_y
    4
    ;; float32 _compass_z
    4
    ;; string _compass_time
    4 (length _compass_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gyro_time
       (write-long (length _gyro_time) s) (princ _gyro_time s)
     ;; float32 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _accel_time
       (write-long (length _accel_time) s) (princ _accel_time s)
     ;; float32 _compass_x
       (sys::poke _compass_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _compass_y
       (sys::poke _compass_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _compass_z
       (sys::poke _compass_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _compass_time
       (write-long (length _compass_time) s) (princ _compass_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gyro_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gyro_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _accel_x
     (setq _accel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_y
     (setq _accel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_z
     (setq _accel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _accel_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _accel_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _compass_x
     (setq _compass_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _compass_y
     (setq _compass_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _compass_z
     (setq _compass_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _compass_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _compass_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::gravitational_forces :md5sum-) "96e2fc03b6486059b9ae94e0a184b112")
(setf (get fsae_electric_vehicle::gravitational_forces :datatype-) "fsae_electric_vehicle/gravitational_forces")
(setf (get fsae_electric_vehicle::gravitational_forces :definition-)
      "float32 gyro_x 
float32 gyro_y 
float32 gyro_z 
string gyro_time
float32 accel_x 
float32 accel_y 
float32 accel_z 
string accel_time
float32 compass_x 
float32 compass_y 
float32 compass_z 
string compass_time

")



(provide :fsae_electric_vehicle/gravitational_forces "96e2fc03b6486059b9ae94e0a184b112")


