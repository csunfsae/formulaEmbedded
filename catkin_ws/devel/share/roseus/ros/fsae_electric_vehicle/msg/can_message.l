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
  :slots (_data _id _speed _time ))

(defmethod fsae_electric_vehicle::can_message
  (:init
   (&key
    ((:data __data) "")
    ((:id __id) "")
    ((:speed __speed) 0)
    ((:time __time) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _id (string __id))
   (setq _speed (round __speed))
   (setq _time (string __time))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _id
    4 (length _id)
    ;; int16 _speed
    2
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int16 _speed
       (write-word _speed s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fsae_electric_vehicle::can_message :md5sum-) "4355bdec9ee92cbc70a49698caf25582")
(setf (get fsae_electric_vehicle::can_message :datatype-) "fsae_electric_vehicle/can_message")
(setf (get fsae_electric_vehicle::can_message :definition-)
      "string data 
string id 
int16 speed
string time
")



(provide :fsae_electric_vehicle/can_message "4355bdec9ee92cbc70a49698caf25582")


