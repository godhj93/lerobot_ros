#!/usr/bin/python3

import rospy
import pandas as pd
import numpy as np
from lerobot_ros.srv import DrawingService
from geometry_msgs.msg import Point
from glob import glob
import os
import sys
# Add the path to the transform module
sys.path.append(os.path.join(os.path.dirname(__file__)))

from transform import transform_to_configuration_space

def numpy_to_point_array(pts):
    """
    Converts a numpy array of shape (data_length, 3) into a list of Point messages.
    """
    return [Point(x=pt[0], y=pt[1], z=pt[2]) for pt in pts]

if __name__ == "__main__":
    rospy.init_node("drawing_client")

    # Wait for the service to be available
    rospy.wait_for_service("drawing_service")
    try:
        # Create the service proxy
        drawing_service = rospy.ServiceProxy("drawing_service", DrawingService)

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
                rospy.loginfo(f"Drawing completed for file: {file_path}")
            else:
                rospy.logerr(f"Failed to complete drawing for file: {file_path}")

    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")
