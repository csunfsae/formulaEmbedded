;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::pedals)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'pedals (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::PEDALS")
  (make-package "FSAE_ELECTRIC_VEHICLE::PEDALS"))

(in-package "ROS")
;;//! \htmlinclude pedals.msg.html


(defclass fsae_electric_vehicle::pedals
  :super ros::object
  :slots (_front_right _front_left _back_left _back_right _time ))

(defmethod fsae_electric_vehicle::pedals
  (:init
   (&key
    ((:front_right __front_right) 0.0)
    ((:front_left __front_left) 0.0)
    ((:back_left __back_left) 0.0)
    ((:back_right __back_right) 0.0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _front_right (float __front_right))
   (setq _front_left (float __front_left))
   (setq _back_left (float __back_left))
   (setq _back_right (float __back_right))
   (setq _time (string __time))
   self)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:back_left
   (&optional __back_left)
   (if __back_left (setq _back_left __back_left)) _back_left)
  (:back_right
   (&optional __back_right)
   (if __back_right (setq _back_right __back_right)) _back_right)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _front_right
    4
    ;; float32 _front_left
    4
    ;; float32 _back_left
    4
    ;; float32 _back_right
    4
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _front_right
       (sys::poke _front_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_left
       (sys::poke _front_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _back_left
       (sys::poke _back_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _back_right
       (sys::poke _back_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _front_right
     (setq _front_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_left
     (setq _front_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _back_left
     (setq _back_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _back_right
     (setq _back_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::pedals :md5sum-) "fcfc7f00aed5c6f9b38d528c27bedb97")
(setf (get fsae_electric_vehicle::pedals :datatype-) "fsae_electric_vehicle/pedals")
(setf (get fsae_electric_vehicle::pedals :definition-)
      "float32 front_right
float32 front_left
float32 back_left
float32 back_right
string time

")



(provide :fsae_electric_vehicle/pedals "fcfc7f00aed5c6f9b38d528c27bedb97")


