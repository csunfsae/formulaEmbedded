;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::tire_pressure)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'tire_pressure (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::TIRE_PRESSURE")
  (make-package "FSAE_ELECTRIC_VEHICLE::TIRE_PRESSURE"))

(in-package "ROS")
;;//! \htmlinclude tire_pressure.msg.html


(defclass fsae_electric_vehicle::tire_pressure
  :super ros::object
  :slots (_front_left_value _front_left_time _front_right_value _front_right_time _back_left_value _back_left_time _back_right_value _back_right_time ))

(defmethod fsae_electric_vehicle::tire_pressure
  (:init
   (&key
    ((:front_left_value __front_left_value) 0.0)
    ((:front_left_time __front_left_time) "")
    ((:front_right_value __front_right_value) 0.0)
    ((:front_right_time __front_right_time) "")
    ((:back_left_value __back_left_value) 0.0)
    ((:back_left_time __back_left_time) "")
    ((:back_right_value __back_right_value) 0.0)
    ((:back_right_time __back_right_time) "")
    )
   (send-super :init)
   (setq _front_left_value (float __front_left_value))
   (setq _front_left_time (string __front_left_time))
   (setq _front_right_value (float __front_right_value))
   (setq _front_right_time (string __front_right_time))
   (setq _back_left_value (float __back_left_value))
   (setq _back_left_time (string __back_left_time))
   (setq _back_right_value (float __back_right_value))
   (setq _back_right_time (string __back_right_time))
   self)
  (:front_left_value
   (&optional __front_left_value)
   (if __front_left_value (setq _front_left_value __front_left_value)) _front_left_value)
  (:front_left_time
   (&optional __front_left_time)
   (if __front_left_time (setq _front_left_time __front_left_time)) _front_left_time)
  (:front_right_value
   (&optional __front_right_value)
   (if __front_right_value (setq _front_right_value __front_right_value)) _front_right_value)
  (:front_right_time
   (&optional __front_right_time)
   (if __front_right_time (setq _front_right_time __front_right_time)) _front_right_time)
  (:back_left_value
   (&optional __back_left_value)
   (if __back_left_value (setq _back_left_value __back_left_value)) _back_left_value)
  (:back_left_time
   (&optional __back_left_time)
   (if __back_left_time (setq _back_left_time __back_left_time)) _back_left_time)
  (:back_right_value
   (&optional __back_right_value)
   (if __back_right_value (setq _back_right_value __back_right_value)) _back_right_value)
  (:back_right_time
   (&optional __back_right_time)
   (if __back_right_time (setq _back_right_time __back_right_time)) _back_right_time)
  (:serialization-length
   ()
   (+
    ;; float32 _front_left_value
    4
    ;; string _front_left_time
    4 (length _front_left_time)
    ;; float32 _front_right_value
    4
    ;; string _front_right_time
    4 (length _front_right_time)
    ;; float32 _back_left_value
    4
    ;; string _back_left_time
    4 (length _back_left_time)
    ;; float32 _back_right_value
    4
    ;; string _back_right_time
    4 (length _back_right_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front_left_value
       (sys::poke _front_left_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _front_left_time
       (write-long (length _front_left_time) s) (princ _front_left_time s)
     ;; float32 _front_right_value
       (sys::poke _front_right_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _front_right_time
       (write-long (length _front_right_time) s) (princ _front_right_time s)
     ;; float32 _back_left_value
       (sys::poke _back_left_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _back_left_time
       (write-long (length _back_left_time) s) (princ _back_left_time s)
     ;; float32 _back_right_value
       (sys::poke _back_right_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _back_right_time
       (write-long (length _back_right_time) s) (princ _back_right_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front_left_value
     (setq _front_left_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _front_left_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _front_left_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _front_right_value
     (setq _front_right_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _front_right_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _front_right_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _back_left_value
     (setq _back_left_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _back_left_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _back_left_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _back_right_value
     (setq _back_right_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _back_right_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _back_right_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::tire_pressure :md5sum-) "8a6ea563b0ec5361d7adcaeba167aaab")
(setf (get fsae_electric_vehicle::tire_pressure :datatype-) "fsae_electric_vehicle/tire_pressure")
(setf (get fsae_electric_vehicle::tire_pressure :definition-)
      "float32 front_left_value
string front_left_time
float32 front_right_value
string front_right_time
float32 back_left_value
string back_left_time
float32 back_right_value
string back_right_time

")



(provide :fsae_electric_vehicle/tire_pressure "8a6ea563b0ec5361d7adcaeba167aaab")


