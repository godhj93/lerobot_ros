; Auto-generated. Do not edit!


(cl:in-package lerobot_ros-srv)


;//! \htmlinclude DrawingCompleted-request.msg.html

(cl:defclass <DrawingCompleted-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DrawingCompleted-request (<DrawingCompleted-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrawingCompleted-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrawingCompleted-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lerobot_ros-srv:<DrawingCompleted-request> is deprecated: use lerobot_ros-srv:DrawingCompleted-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrawingCompleted-request>) ostream)
  "Serializes a message object of type '<DrawingCompleted-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrawingCompleted-request>) istream)
  "Deserializes a message object of type '<DrawingCompleted-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrawingCompleted-request>)))
  "Returns string type for a service object of type '<DrawingCompleted-request>"
  "lerobot_ros/DrawingCompletedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingCompleted-request)))
  "Returns string type for a service object of type 'DrawingCompleted-request"
  "lerobot_ros/DrawingCompletedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrawingCompleted-request>)))
  "Returns md5sum for a message object of type '<DrawingCompleted-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrawingCompleted-request)))
  "Returns md5sum for a message object of type 'DrawingCompleted-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrawingCompleted-request>)))
  "Returns full string definition for message of type '<DrawingCompleted-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrawingCompleted-request)))
  "Returns full string definition for message of type 'DrawingCompleted-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrawingCompleted-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrawingCompleted-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DrawingCompleted-request
))
;//! \htmlinclude DrawingCompleted-response.msg.html

(cl:defclass <DrawingCompleted-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DrawingCompleted-response (<DrawingCompleted-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrawingCompleted-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrawingCompleted-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lerobot_ros-srv:<DrawingCompleted-response> is deprecated: use lerobot_ros-srv:DrawingCompleted-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DrawingCompleted-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lerobot_ros-srv:success-val is deprecated.  Use lerobot_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrawingCompleted-response>) ostream)
  "Serializes a message object of type '<DrawingCompleted-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrawingCompleted-response>) istream)
  "Deserializes a message object of type '<DrawingCompleted-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrawingCompleted-response>)))
  "Returns string type for a service object of type '<DrawingCompleted-response>"
  "lerobot_ros/DrawingCompletedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingCompleted-response)))
  "Returns string type for a service object of type 'DrawingCompleted-response"
  "lerobot_ros/DrawingCompletedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrawingCompleted-response>)))
  "Returns md5sum for a message object of type '<DrawingCompleted-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrawingCompleted-response)))
  "Returns md5sum for a message object of type 'DrawingCompleted-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrawingCompleted-response>)))
  "Returns full string definition for message of type '<DrawingCompleted-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrawingCompleted-response)))
  "Returns full string definition for message of type 'DrawingCompleted-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrawingCompleted-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrawingCompleted-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DrawingCompleted-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DrawingCompleted)))
  'DrawingCompleted-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DrawingCompleted)))
  'DrawingCompleted-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawingCompleted)))
  "Returns string type for a service object of type '<DrawingCompleted>"
  "lerobot_ros/DrawingCompleted")