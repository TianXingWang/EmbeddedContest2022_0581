;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetAeEnable)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetAeEnable (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETAEENABLE")
  (make-package "ASTRA_CAMERA::SETAEENABLE"))
(unless (find-package "ASTRA_CAMERA::SETAEENABLEREQUEST")
  (make-package "ASTRA_CAMERA::SETAEENABLEREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETAEENABLERESPONSE")
  (make-package "ASTRA_CAMERA::SETAEENABLERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetAeEnableRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetAeEnableRequest
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

(defclass astra_camera::SetAeEnableResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetAeEnableResponse
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

(defclass astra_camera::SetAeEnable
  :super ros::object
  :slots ())

(setf (get astra_camera::SetAeEnable :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAeEnable :datatype-) "astra_camera/SetAeEnable")
(setf (get astra_camera::SetAeEnable :request) astra_camera::SetAeEnableRequest)
(setf (get astra_camera::SetAeEnable :response) astra_camera::SetAeEnableResponse)

(defmethod astra_camera::SetAeEnableRequest
  (:response () (instance astra_camera::SetAeEnableResponse :init)))

(setf (get astra_camera::SetAeEnableRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAeEnableRequest :datatype-) "astra_camera/SetAeEnableRequest")
(setf (get astra_camera::SetAeEnableRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetAeEnableResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAeEnableResponse :datatype-) "astra_camera/SetAeEnableResponse")
(setf (get astra_camera::SetAeEnableResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetAeEnable "8c1211af706069c994c06e00eb59ac9e")


