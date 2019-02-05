;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::gps)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'gps (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::GPS")
  (make-package "FSAE_ELECTRIC_VEHICLE::GPS"))

(in-package "ROS")
;;//! \htmlinclude gps.msg.html


(defclass fsae_electric_vehicle::gps
  :super ros::object
  :slots (_latitude _longitude ))

(defmethod fsae_electric_vehicle::gps
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::gps :md5sum-) "9aeb2245d9611f300beeb62a0151d3f3")
(setf (get fsae_electric_vehicle::gps :datatype-) "fsae_electric_vehicle/gps")
(setf (get fsae_electric_vehicle::gps :definition-)
      "float32 latitude
float32 longitude

")



(provide :fsae_electric_vehicle/gps "9aeb2245d9611f300beeb62a0151d3f3")


