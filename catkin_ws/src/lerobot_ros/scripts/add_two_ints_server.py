#!/usr/bin/python3

from __future__ import print_function

from lerobot_ros.srv import DrawingService, DrawingServiceResponse
import rospy
from geometry_msgs.msg import Point


def handle_drawing_request(req):
    """
    Handles the drawing request by processing Point messages.
    """
    rospy.loginfo(f"Received {len(req.points)} points to draw.")
    
    # Simulate drawing process
    for pt in req.points:
        rospy.loginfo(f"Drawing point: x={pt.x:.3f}, y={pt.y:.3f}, z={pt.z:.3f}")
        rospy.sleep(0.001)  # Simulate processing time

    # Return success flag
    return DrawingServiceResponse(success=True)

if __name__ == "__main__":
    rospy.init_node("drawing_server")
    
    # Define the service
    service = rospy.Service("drawing_service", DrawingService, handle_drawing_request)
    rospy.loginfo("Drawing server is ready to receive requests.")
    
    rospy.spin()