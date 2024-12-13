;; Auto-generated. Do not edit!


(when (boundp 'lerobot_ros::DrawingCompleted)
  (if (not (find-package "LEROBOT_ROS"))
    (make-package "LEROBOT_ROS"))
  (shadow 'DrawingCompleted (find-package "LEROBOT_ROS")))
(unless (find-package "LEROBOT_ROS::DRAWINGCOMPLETED")
  (make-package "LEROBOT_ROS::DRAWINGCOMPLETED"))
(unless (find-package "LEROBOT_ROS::DRAWINGCOMPLETEDREQUEST")
  (make-package "LEROBOT_ROS::DRAWINGCOMPLETEDREQUEST"))
(unless (find-package "LEROBOT_ROS::DRAWINGCOMPLETEDRESPONSE")
  (make-package "LEROBOT_ROS::DRAWINGCOMPLETEDRESPONSE"))

(in-package "ROS")





(defclass lerobot_ros::DrawingCompletedRequest
  :super ros::object
  :slots ())

(defmethod lerobot_ros::DrawingCompletedRequest
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

(defclass lerobot_ros::DrawingCompletedResponse
  :super ros::object
  :slots (_success ))

(defmethod lerobot_ros::DrawingCompletedResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lerobot_ros::DrawingCompleted
  :super ros::object
  :slots ())

(setf (get lerobot_ros::DrawingCompleted :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lerobot_ros::DrawingCompleted :datatype-) "lerobot_ros/DrawingCompleted")
(setf (get lerobot_ros::DrawingCompleted :request) lerobot_ros::DrawingCompletedRequest)
(setf (get lerobot_ros::DrawingCompleted :response) lerobot_ros::DrawingCompletedResponse)

(defmethod lerobot_ros::DrawingCompletedRequest
  (:response () (instance lerobot_ros::DrawingCompletedResponse :init)))

(setf (get lerobot_ros::DrawingCompletedRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lerobot_ros::DrawingCompletedRequest :datatype-) "lerobot_ros/DrawingCompletedRequest")
(setf (get lerobot_ros::DrawingCompletedRequest :definition-)
      "---
bool success
")

(setf (get lerobot_ros::DrawingCompletedResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lerobot_ros::DrawingCompletedResponse :datatype-) "lerobot_ros/DrawingCompletedResponse")
(setf (get lerobot_ros::DrawingCompletedResponse :definition-)
      "---
bool success
")



(provide :lerobot_ros/DrawingCompleted "358e233cde0c8a8bcfea4ce193f8fc15")


