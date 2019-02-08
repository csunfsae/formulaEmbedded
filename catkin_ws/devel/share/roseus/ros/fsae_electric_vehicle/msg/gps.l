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
  :slots (_latitude _longitude _sats _alt _time ))

(defmethod fsae_electric_vehicle::gps
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:sats __sats) 0.0)
    ((:alt __alt) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _sats (float __sats))
   (setq _alt (float __alt))
   (setq _time (float __time))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:sats
   (&optional __sats)
   (if __sats (setq _sats __sats)) _sats)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _sats
    4
    ;; float32 _alt
    4
    ;; float32 _time
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
     ;; float32 _sats
       (sys::poke _sats (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sats
     (setq _sats (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::gps :md5sum-) "1b894526e44406bfa9b2c59093e9562c")
(setf (get fsae_electric_vehicle::gps :datatype-) "fsae_electric_vehicle/gps")
(setf (get fsae_electric_vehicle::gps :definition-)
      "float32 latitude
float32 longitude
float32 sats
float32 alt
float32 time

")



(provide :fsae_electric_vehicle/gps "1b894526e44406bfa9b2c59093e9562c")


