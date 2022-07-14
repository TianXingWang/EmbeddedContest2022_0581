;; Auto-generated. Do not edit!


(when (boundp 'astra_camera::SetAutoExposure)
  (if (not (find-package "ASTRA_CAMERA"))
    (make-package "ASTRA_CAMERA"))
  (shadow 'SetAutoExposure (find-package "ASTRA_CAMERA")))
(unless (find-package "ASTRA_CAMERA::SETAUTOEXPOSURE")
  (make-package "ASTRA_CAMERA::SETAUTOEXPOSURE"))
(unless (find-package "ASTRA_CAMERA::SETAUTOEXPOSUREREQUEST")
  (make-package "ASTRA_CAMERA::SETAUTOEXPOSUREREQUEST"))
(unless (find-package "ASTRA_CAMERA::SETAUTOEXPOSURERESPONSE")
  (make-package "ASTRA_CAMERA::SETAUTOEXPOSURERESPONSE"))

(in-package "ROS")





(defclass astra_camera::SetAutoExposureRequest
  :super ros::object
  :slots (_enable ))

(defmethod astra_camera::SetAutoExposureRequest
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

(defclass astra_camera::SetAutoExposureResponse
  :super ros::object
  :slots ())

(defmethod astra_camera::SetAutoExposureResponse
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

(defclass astra_camera::SetAutoExposure
  :super ros::object
  :slots ())

(setf (get astra_camera::SetAutoExposure :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoExposure :datatype-) "astra_camera/SetAutoExposure")
(setf (get astra_camera::SetAutoExposure :request) astra_camera::SetAutoExposureRequest)
(setf (get astra_camera::SetAutoExposure :response) astra_camera::SetAutoExposureResponse)

(defmethod astra_camera::SetAutoExposureRequest
  (:response () (instance astra_camera::SetAutoExposureResponse :init)))

(setf (get astra_camera::SetAutoExposureRequest :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoExposureRequest :datatype-) "astra_camera/SetAutoExposureRequest")
(setf (get astra_camera::SetAutoExposureRequest :definition-)
      "bool enable
---
")

(setf (get astra_camera::SetAutoExposureResponse :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get astra_camera::SetAutoExposureResponse :datatype-) "astra_camera/SetAutoExposureResponse")
(setf (get astra_camera::SetAutoExposureResponse :definition-)
      "bool enable
---
")



(provide :astra_camera/SetAutoExposure "8c1211af706069c994c06e00eb59ac9e")


