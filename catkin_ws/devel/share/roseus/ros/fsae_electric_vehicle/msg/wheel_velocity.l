;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::wheel_velocity)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'wheel_velocity (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::WHEEL_VELOCITY")
  (make-package "FSAE_ELECTRIC_VEHICLE::WHEEL_VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude wheel_velocity.msg.html


(defclass fsae_electric_vehicle::wheel_velocity
  :super ros::object
  :slots (_Value ))

(defmethod fsae_electric_vehicle::wheel_velocity
  (:init
   (&key
    ((:Value __Value) "")
    )
   (send-super :init)
   (setq _Value (string __Value))
   self)
  (:Value
   (&optional __Value)
   (if __Value (setq _Value __Value)) _Value)
  (:serialization-length
   ()
   (+
    ;; string _Value
    4 (length _Value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Value
       (write-long (length _Value) s) (princ _Value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::wheel_velocity :md5sum-) "c39d4884ea4866f0b5cd78380dec7bc0")
(setf (get fsae_electric_vehicle::wheel_velocity :datatype-) "fsae_electric_vehicle/wheel_velocity")
(setf (get fsae_electric_vehicle::wheel_velocity :definition-)
      "string Value

")



(provide :fsae_electric_vehicle/wheel_velocity "c39d4884ea4866f0b5cd78380dec7bc0")


