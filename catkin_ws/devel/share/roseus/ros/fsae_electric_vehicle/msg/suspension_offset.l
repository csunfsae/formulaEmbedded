;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::suspension_offset)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'suspension_offset (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::SUSPENSION_OFFSET")
  (make-package "FSAE_ELECTRIC_VEHICLE::SUSPENSION_OFFSET"))

(in-package "ROS")
;;//! \htmlinclude suspension_offset.msg.html


(defclass fsae_electric_vehicle::suspension_offset
  :super ros::object
  :slots (_front_left_value _front_right_value _back_left_value _back_right_value _time_collected ))

(defmethod fsae_electric_vehicle::suspension_offset
  (:init
   (&key
    ((:front_left_value __front_left_value) 0.0)
    ((:front_right_value __front_right_value) 0.0)
    ((:back_left_value __back_left_value) 0.0)
    ((:back_right_value __back_right_value) 0.0)
    ((:time_collected __time_collected) "")
    )
   (send-super :init)
   (setq _front_left_value (float __front_left_value))
   (setq _front_right_value (float __front_right_value))
   (setq _back_left_value (float __back_left_value))
   (setq _back_right_value (float __back_right_value))
   (setq _time_collected (string __time_collected))
   self)
  (:front_left_value
   (&optional __front_left_value)
   (if __front_left_value (setq _front_left_value __front_left_value)) _front_left_value)
  (:front_right_value
   (&optional __front_right_value)
   (if __front_right_value (setq _front_right_value __front_right_value)) _front_right_value)
  (:back_left_value
   (&optional __back_left_value)
   (if __back_left_value (setq _back_left_value __back_left_value)) _back_left_value)
  (:back_right_value
   (&optional __back_right_value)
   (if __back_right_value (setq _back_right_value __back_right_value)) _back_right_value)
  (:time_collected
   (&optional __time_collected)
   (if __time_collected (setq _time_collected __time_collected)) _time_collected)
  (:serialization-length
   ()
   (+
    ;; float32 _front_left_value
    4
    ;; float32 _front_right_value
    4
    ;; float32 _back_left_value
    4
    ;; float32 _back_right_value
    4
    ;; string _time_collected
    4 (length _time_collected)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front_left_value
       (sys::poke _front_left_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right_value
       (sys::poke _front_right_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _back_left_value
       (sys::poke _back_left_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _back_right_value
       (sys::poke _back_right_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time_collected
       (write-long (length _time_collected) s) (princ _time_collected s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front_left_value
     (setq _front_left_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right_value
     (setq _front_right_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _back_left_value
     (setq _back_left_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _back_right_value
     (setq _back_right_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time_collected
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time_collected (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::suspension_offset :md5sum-) "efe3c26acf397027388f0a2994b3fca9")
(setf (get fsae_electric_vehicle::suspension_offset :datatype-) "fsae_electric_vehicle/suspension_offset")
(setf (get fsae_electric_vehicle::suspension_offset :definition-)
      "float32 front_left_value 
float32 front_right_value 
float32 back_left_value 
float32 back_right_value 
string time_collected

")



(provide :fsae_electric_vehicle/suspension_offset "efe3c26acf397027388f0a2994b3fca9")


