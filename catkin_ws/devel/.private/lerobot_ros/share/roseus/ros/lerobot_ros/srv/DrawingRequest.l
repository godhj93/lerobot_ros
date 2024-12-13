;; Auto-generated. Do not edit!


(when (boundp 'lerobot_ros::DrawingRequest)
  (if (not (find-package "LEROBOT_ROS"))
    (make-package "LEROBOT_ROS"))
  (shadow 'DrawingRequest (find-package "LEROBOT_ROS")))
(unless (find-package "LEROBOT_ROS::DRAWINGREQUEST")
  (make-package "LEROBOT_ROS::DRAWINGREQUEST"))
(unless (find-package "LEROBOT_ROS::DRAWINGREQUESTREQUEST")
  (make-package "LEROBOT_ROS::DRAWINGREQUESTREQUEST"))
(unless (find-package "LEROBOT_ROS::DRAWINGREQUESTRESPONSE")
  (make-package "LEROBOT_ROS::DRAWINGREQUESTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass lerobot_ros::DrawingRequestRequest
  :super ros::object
  :slots (_points ))

(defmethod lerobot_ros::DrawingRequestRequest
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lerobot_ros::DrawingRequestResponse
  :super ros::object
  :slots (_success ))

(defmethod lerobot_ros::DrawingRequestResponse
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

(defclass lerobot_ros::DrawingRequest
  :super ros::object
  :slots ())

(setf (get lerobot_ros::DrawingRequest :md5sum-) "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(setf (get lerobot_ros::DrawingRequest :datatype-) "lerobot_ros/DrawingRequest")
(setf (get lerobot_ros::DrawingRequest :request) lerobot_ros::DrawingRequestRequest)
(setf (get lerobot_ros::DrawingRequest :response) lerobot_ros::DrawingRequestResponse)

(defmethod lerobot_ros::DrawingRequestRequest
  (:response () (instance lerobot_ros::DrawingRequestResponse :init)))

(setf (get lerobot_ros::DrawingRequestRequest :md5sum-) "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(setf (get lerobot_ros::DrawingRequestRequest :datatype-) "lerobot_ros/DrawingRequestRequest")
(setf (get lerobot_ros::DrawingRequestRequest :definition-)
      "geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")

(setf (get lerobot_ros::DrawingRequestResponse :md5sum-) "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(setf (get lerobot_ros::DrawingRequestResponse :datatype-) "lerobot_ros/DrawingRequestResponse")
(setf (get lerobot_ros::DrawingRequestResponse :definition-)
      "geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")



(provide :lerobot_ros/DrawingRequest "6fec06d56f8f2e4b65a60fc5e8f7a8f9")


