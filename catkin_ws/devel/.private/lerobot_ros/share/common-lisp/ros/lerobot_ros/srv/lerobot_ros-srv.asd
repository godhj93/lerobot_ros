
(cl:in-package :asdf)

(defsystem "lerobot_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DrawingCompleted" :depends-on ("_package_DrawingCompleted"))
    (:file "_package_DrawingCompleted" :depends-on ("_package"))
    (:file "DrawingRequest" :depends-on ("_package_DrawingRequest"))
    (:file "_package_DrawingRequest" :depends-on ("_package"))
  ))