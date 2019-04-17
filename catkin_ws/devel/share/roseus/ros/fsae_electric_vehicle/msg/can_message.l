;; Auto-generated. Do not edit!


(when (boundp 'fsae_electric_vehicle::can_message)
  (if (not (find-package "FSAE_ELECTRIC_VEHICLE"))
    (make-package "FSAE_ELECTRIC_VEHICLE"))
  (shadow 'can_message (find-package "FSAE_ELECTRIC_VEHICLE")))
(unless (find-package "FSAE_ELECTRIC_VEHICLE::CAN_MESSAGE")
  (make-package "FSAE_ELECTRIC_VEHICLE::CAN_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude can_message.msg.html


(defclass fsae_electric_vehicle::can_message
  :super ros::object
  :slots (_data _id _time ))

(defmethod fsae_electric_vehicle::can_message
  (:init
   (&key
    ((:data __data) "")
    ((:id __id) 0.0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _id (float __id))
   (setq _time (string __time))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; float32 _id
    4
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; float32 _id
       (sys::poke _id (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _id
     (setq _id (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::can_message :md5sum-) "fc80d264dda87225b525426d51b299ce")
(setf (get fsae_electric_vehicle::can_message :datatype-) "fsae_electric_vehicle/can_message")
(setf (get fsae_electric_vehicle::can_message :definition-)
      "string data 
float32 id 
string time
")



(provide :fsae_electric_vehicle/can_message "fc80d264dda87225b525426d51b299ce")


