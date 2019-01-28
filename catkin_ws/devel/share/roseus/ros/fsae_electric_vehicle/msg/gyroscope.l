;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::gyroscope)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'gyroscope (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::GYROSCOPE")
  (make-package "FSAE_ELECTRIC_VEHICLE::GYROSCOPE"))

(in-package "ROS")
;;//! \htmlinclude gyroscope.msg.html


(defclass fsae_electric_vehicle::gyroscope
  :super ros::object
  :slots (_x _y _z _time ))

(defmethod fsae_electric_vehicle::gyroscope
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _time (string __time))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::gyroscope :md5sum-) "093e31f85644998fb59a959954c3fd8b")
(setf (get fsae_electric_vehicle::gyroscope :datatype-) "fsae_electric_vehicle/gyroscope")
(setf (get fsae_electric_vehicle::gyroscope :definition-)
      "float32 x 
float32 y 
float32 z 
string time

")



(provide :fsae_electric_vehicle/gyroscope "093e31f85644998fb59a959954c3fd8b")


