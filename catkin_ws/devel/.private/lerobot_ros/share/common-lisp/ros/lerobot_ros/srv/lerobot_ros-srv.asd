
(cl:in-package :asdf)

(defsystem "lerobot_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DrawingService" :depends-on ("_package_DrawingService"))
    (:file "_package_DrawingService" :depends-on ("_package"))
  ))