
(cl:in-package :asdf)

(defsystem "turtlebot_calibration-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ScanAngle" :depends-on ("_package_ScanAngle"))
    (:file "_package_ScanAngle" :depends-on ("_package"))
  ))