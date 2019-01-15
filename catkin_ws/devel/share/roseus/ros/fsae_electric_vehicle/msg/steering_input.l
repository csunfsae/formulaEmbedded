;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::steering_input)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'steering_input (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::STEERING_INPUT")
  (make-package "FSAE_ELECTRIC_VEHICLE::STEERING_INPUT"))

(in-package "ROS")
;;//! \htmlinclude steering_input.msg.html


(defclass fsae_electric_vehicle::steering_input
  :super ros::object
  :slots (_value _time ))

(defmethod fsae_electric_vehicle::steering_input
  (:init
   (&key
    ((:value __value) 0.0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _time (string __time))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::steering_input :md5sum-) "efaa27c9229f431a06b62922d8b71027")
(setf (get fsae_electric_vehicle::steering_input :datatype-) "fsae_electric_vehicle/steering_input")
(setf (get fsae_electric_vehicle::steering_input :definition-)
      "float32 value 
string time

")



(provide :fsae_electric_vehicle/steering_input "efaa27c9229f431a06b62922d8b71027")


