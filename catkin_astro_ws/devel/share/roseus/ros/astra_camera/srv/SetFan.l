;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetFan)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetFan (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETFAN")
  (make-package "ASTRA_CAMERA::SETFAN"))
(unless (find-package "ASTRA_CAMERA::SETFANREQUEST")
  (make-package "ASTRA_CAMERA::SETFANREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETFANRESPONSE")
  (make-package "ASTRA_CAMERA::SETFANRESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetFanRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetFanRequest
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

(defclass astra_camera::SetFanResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetFanResponse
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

(defclass astra_camera::SetFan
  :super ros::object
  :slots ())

(setf (get astra_camera::SetFan :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetFan :datatype-) "astra_camera/SetFan")
(setf (get astra_camera::SetFan :request) astra_camera::SetFanRequest)
(setf (get astra_camera::SetFan :response) astra_camera::SetFanResponse)

(defmethod astra_camera::SetFanRequest
  (:response () (instance astra_camera::SetFanResponse :init)))

(setf (get astra_camera::SetFanRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetFanRequest :datatype-) "astra_camera/SetFanRequest")
(setf (get astra_camera::SetFanRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetFanResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetFanResponse :datatype-) "astra_camera/SetFanResponse")
(setf (get astra_camera::SetFanResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetFan "8c1211af706069c994c06e00eb59ac9e")


