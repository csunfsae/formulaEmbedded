;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::vehicle_speed)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'vehicle_speed (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::VEHICLE_SPEED")
  (make-package "FSAE_ELECTRIC_VEHICLE::VEHICLE_SPEED"))

(in-package "ROS")
;;//! \htmlinclude vehicle_speed.msg.html


(defclass fsae_electric_vehicle::vehicle_speed
  :super ros::object
  :slots (_value ))

(defmethod fsae_electric_vehicle::vehicle_speed
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::vehicle_speed :md5sum-) "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(setf (get fsae_electric_vehicle::vehicle_speed :datatype-) "fsae_electric_vehicle/vehicle_speed")
(setf (get fsae_electric_vehicle::vehicle_speed :definition-)
      "float32 value
")



(provide :fsae_electric_vehicle/vehicle_speed "0aca93dcf6d857f0e5a0dc6be1eaa9fb")


