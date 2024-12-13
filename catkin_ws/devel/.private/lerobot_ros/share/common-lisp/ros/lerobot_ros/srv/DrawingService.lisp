; Auto-generated. Do not edit!


(cl:in-package lerobot_ros-srv)


;//! \htmlinclude DrawingService-request.msg.html

(cl:defclass <DrawingService-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass DrawingService-request (<DrawingService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrawingService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrawingService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lerobot_ros-srv:<DrawingService-request> is deprecated: use lerobot_ros-srv:DrawingService-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <DrawingService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lerobot_ros-srv:points-val is deprecated.  Use lerobot_ros-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrawingService-request>) ostream)
  "Serializes a message object of type '<DrawingService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrawingService-request>) istream)
  "Deserializes a message object of type '<DrawingService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrawingService-request>)))
  "Returns string type for a service object of type '<DrawingService-request>"
  "lerobot_ros/DrawingServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingService-request)))
  "Returns string type for a service object of type 'DrawingService-request"
  "lerobot_ros/DrawingServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrawingService-request>)))
  "Returns md5sum for a message object of type '<DrawingService-request>"
  "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrawingService-request)))
  "Returns md5sum for a message object of type 'DrawingService-request"
  "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrawingService-request>)))
  "Returns full string definition for message of type '<DrawingService-request>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrawingService-request)))
  "Returns full string definition for message of type 'DrawingService-request"
  (cl:format cl:nil "geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrawingService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrawingService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DrawingService-request
    (cl:cons ':points (points msg))
))
;//! \htmlinclude DrawingService-response.msg.html

(cl:defclass <DrawingService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DrawingService-response (<DrawingService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrawingService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrawingService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lerobot_ros-srv:<DrawingService-response> is deprecated: use lerobot_ros-srv:DrawingService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DrawingService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lerobot_ros-srv:success-val is deprecated.  Use lerobot_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrawingService-response>) ostream)
  "Serializes a message object of type '<DrawingService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrawingService-response>) istream)
  "Deserializes a message object of type '<DrawingService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrawingService-response>)))
  "Returns string type for a service object of type '<DrawingService-response>"
  "lerobot_ros/DrawingServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingService-response)))
  "Returns string type for a service object of type 'DrawingService-response"
  "lerobot_ros/DrawingServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrawingService-response>)))
  "Returns md5sum for a message object of type '<DrawingService-response>"
  "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrawingService-response)))
  "Returns md5sum for a message object of type 'DrawingService-response"
  "6fec06d56f8f2e4b65a60fc5e8f7a8f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrawingService-response>)))
  "Returns full string definition for message of type '<DrawingService-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrawingService-response)))
  "Returns full string definition for message of type 'DrawingService-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrawingService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrawingService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DrawingService-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DrawingService)))
  'DrawingService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DrawingService)))
  'DrawingService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingService)))
  "Returns string type for a service object of type '<DrawingService>"
  "lerobot_ros/DrawingService")