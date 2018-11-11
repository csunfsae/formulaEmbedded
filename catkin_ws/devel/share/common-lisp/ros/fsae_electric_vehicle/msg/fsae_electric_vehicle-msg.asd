
(cl:in-package :asdf)

(defsystem "fsae_electric_vehicle-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wheel_velocity" :depends-on ("_package_wheel_velocity"))
    (:file "_package_wheel_velocity" :depends-on ("_package"))
  ))