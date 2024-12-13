#!/usr/bin/python3

import rospy
import pandas as pd
import numpy as np
from lerobot_ros.srv import DrawingRequest, DrawingCompleted, DrawingCompletedResponse
from geometry_msgs.msg import Point
from glob import glob
import os
import sys
# Add the path to the transform module
sys.path.append(os.path.join(os.path.dirname(__file__)))

from transform import transform_to_configuration_space

def handle_complete_request(req):
    
    data = pd.read_csv(csv_files[0])
    pts = data.iloc[:, :3].values
    
    # Transform the points
    transformed_pts = transform_to_configuration_space(pts)
    
    # Convert to Point[] message
    points_msg = numpy_to_point_array(transformed_pts)
    
    rospy.loginfo("Sending points to the drawing server.")
    
    # Call the service
    response = drawing_service(points_msg)
    
    return DrawingCompletedResponse(success=True)

def numpy_to_point_array(pts):
    """
    Converts a numpy array of shape (data_length, 3) into a list of Point messages.
    """
    return [Point(x=pt[0], y=pt[1], z=pt[2]) for pt in pts]

if __name__ == "__main__":
    rospy.init_node("drawing_client")
    
    
    # Wait for the service to be available
    rospy.loginfo("Waiting for the drawing service to be available.")
    rospy.wait_for_service("drawing_request")
    rospy.loginfo("Waiting for the completed service to be available.")
    rospy.wait_for_service("drawing_completed")
    
    
    try:
        # Create the service proxy
        drawing_service = rospy.ServiceProxy("drawing_request", DrawingRequest)
        complete_service = rospy.ServiceProxy("drawing_completed", DrawingCompleted)
        
        # Read the CSV files
        script_dir = os.path.dirname(os.path.abspath(__file__))
        csv_files = glob(os.path.join(script_dir, '../drawing_data/*.csv'))
        rospy.loginfo(f"Found {len(csv_files)} csv files.")
        
        # Process each file
        for file_path in csv_files:
            data = pd.read_csv(file_path)
            pts = data.iloc[:, :3].values

            # Transform the points
            transformed_pts = transform_to_configuration_space(pts)

            # Convert to Point[] message
            points_msg = numpy_to_point_array(transformed_pts)

            rospy.loginfo("Sending points to the drawing server.")
            
            # Call the service
            response = drawing_service(points_msg)
            
            if response.success:
                rospy.loginfo(f"Drawing Requested for file: {file_path}")
            else:
                rospy.logerr(f"Failed to requesting drawing for file: {file_path}")

            while not complete_service().success:
                rospy.loginfo("Waiting for the drawing server to complete the task.")
                rospy.sleep(1)
                
                if rospy.is_shutdown():
                    break
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")
