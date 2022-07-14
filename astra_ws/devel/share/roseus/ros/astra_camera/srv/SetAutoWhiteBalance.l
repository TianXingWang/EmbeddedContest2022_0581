;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetAutoWhiteBalance)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetAutoWhiteBalance (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETAUTOWHITEBALANCE")
  (make-package "ASTRA_CAMERA::SETAUTOWHITEBALANCE"))
(unless (find-package "ASTRA_CAMERA::SETAUTOWHITEBALANCEREQUEST")
  (make-package "ASTRA_CAMERA::SETAUTOWHITEBALANCEREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETAUTOWHITEBALANCERESPONSE")
  (make-package "ASTRA_CAMERA::SETAUTOWHITEBALANCERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetAutoWhiteBalanceRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetAutoWhiteBalanceRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astra_camera::SetAutoWhiteBalanceResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetAutoWhiteBalanceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass astra_camera::SetAutoWhiteBalance
  :super ros::object
  :slots ())

(setf (get astra_camera::SetAutoWhiteBalance :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoWhiteBalance :datatype-) "astra_camera/SetAutoWhiteBalance")
(setf (get astra_camera::SetAutoWhiteBalance :request) astra_camera::SetAutoWhiteBalanceRequest)
(setf (get astra_camera::SetAutoWhiteBalance :response) astra_camera::SetAutoWhiteBalanceResponse)

(defmethod astra_camera::SetAutoWhiteBalanceRequest
  (:response () (instance astra_camera::SetAutoWhiteBalanceResponse :init)))

(setf (get astra_camera::SetAutoWhiteBalanceRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoWhiteBalanceRequest :datatype-) "astra_camera/SetAutoWhiteBalanceRequest")
(setf (get astra_camera::SetAutoWhiteBalanceRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetAutoWhiteBalanceResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoWhiteBalanceResponse :datatype-) "astra_camera/SetAutoWhiteBalanceResponse")
(setf (get astra_camera::SetAutoWhiteBalanceResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetAutoWhiteBalance "8c1211af706069c994c06e00eb59ac9e")


