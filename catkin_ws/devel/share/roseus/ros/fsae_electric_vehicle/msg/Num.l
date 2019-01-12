;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::Num)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'Num (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::NUM")
  (make-package "FSAE_ELECTRIC_VEHICLE::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass fsae_electric_vehicle::Num
  :super ros::object
  :slots (_Value ))

(defmethod fsae_electric_vehicle::Num
  (:init
   (&key
    ((:Value __Value) 0.0)
    )
   (send-super :init)
   (setq _Value (float __Value))
   self)
  (:Value
   (&optional __Value)
   (if __Value (setq _Value __Value)) _Value)
  (:serialization-length
   ()
   (+
    ;; float64 _Value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Value
       (sys::poke _Value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Value
     (setq _Value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::Num :md5sum-) "443763acfe626348dfcaaf050a8f1502")
(setf (get fsae_electric_vehicle::Num :datatype-) "fsae_electric_vehicle/Num")
(setf (get fsae_electric_vehicle::Num :definition-)
      "float64 Value

")



(provide :fsae_electric_vehicle/Num "443763acfe626348dfcaaf050a8f1502")


