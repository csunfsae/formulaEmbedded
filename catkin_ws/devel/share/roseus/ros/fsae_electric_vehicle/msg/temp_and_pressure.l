;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::temp_and_pressure)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'temp_and_pressure (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::TEMP_AND_PRESSURE")
  (make-package "FSAE_ELECTRIC_VEHICLE::TEMP_AND_PRESSURE"))

(in-package "ROS")
;;//! \htmlinclude temp_and_pressure.msg.html


(defclass fsae_electric_vehicle::temp_and_pressure
  :super ros::object
  :slots (_temp _pressure _time ))

(defmethod fsae_electric_vehicle::temp_and_pressure
  (:init
   (&key
    ((:temp __temp) 0.0)
    ((:pressure __pressure) 0.0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _temp (float __temp))
   (setq _pressure (float __pressure))
   (setq _time (string __time))
   self)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _temp
    4
    ;; float32 _pressure
    4
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::temp_and_pressure :md5sum-) "26c525dcd35afdc9fbc0cf3502593e9f")
(setf (get fsae_electric_vehicle::temp_and_pressure :datatype-) "fsae_electric_vehicle/temp_and_pressure")
(setf (get fsae_electric_vehicle::temp_and_pressure :definition-)
      "float32 temp
float32 pressure
string time

")



(provide :fsae_electric_vehicle/temp_and_pressure "26c525dcd35afdc9fbc0cf3502593e9f")


