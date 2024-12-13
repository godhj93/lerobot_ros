#!/usr/bin/python3

from __future__ import print_function

from lerobot_ros.srv import DrawingRequest, DrawingRequestResponse, DrawingCompleted, DrawingCompletedResponse
import rospy
from geometry_msgs.msg import Point
from termcolor import colored
import sys
import os
import numpy as np
# Add the path to the utils
sys.path.append(os.path.join(os.path.dirname(__file__)))
from utils import load_world, fix_joint_angle, create_marker_traj, initialize_simulator
from robot import Robot
import mujoco.viewer
import mujoco

# 작업 상태 변수
task_done = False
current_task = None

def handle_drawing_request(req):
    
    global current_task, task_done
    
    rospy.loginfo(f"Received {len(req.points)} points to draw.")
    current_task = [Point(x=pt.x, y=pt.y, z=pt.z) for pt in req.points]
    task_done = False 
    return DrawingRequestResponse(success=True)

def handle_drawing_complete(req):
    
    global task_done
    if task_done:
        return DrawingCompletedResponse(success=True)
    
    else:
        return DrawingCompletedResponse(success=False)
    
def process_task():
    
    global task_done, current_task
    
    if current_task is not None:
        rospy.loginfo("Processing the task.")
        for idx, pt in enumerate(current_task):
            
            robot.target_ee_position = np.array([pt.x, pt.y, pt.z])
            
            robot.inverse_kinematics_rot_backup_5DOF(
                    ee_target_pos=robot.target_ee_position, 
                    ee_target_rot=fix_joint_angle(), 
                    joint_name='joint5')
            
            # Synchronize with the viewer
            viewer.sync()
            rospy.loginfo(f"Drawing point {idx+1}/{len(current_task)}")        
            
        rospy.logwarn("Task completed.")
        task_done = True
        current_task = None
        
if __name__ == "__main__":
    
    # Initialize the simulator
    robot, world, data = initialize_simulator(Hz = 100)
    
    # Initialize the ROS node
    rospy.init_node("drawing_server")
    
    # Define the service
    rospy.Service("drawing_request", DrawingRequest, handle_drawing_request)
    rospy.Service("drawing_completed", DrawingCompleted, handle_drawing_complete)
    
    rospy.loginfo("Drawing server is ready to receive requests.")

    with mujoco.viewer.launch_passive(world, data) as viewer:
        try:
            while viewer.is_running():
                
                process_task()
                
                # Check the keyboard interrupt
                if rospy.is_shutdown():
                    rospy.logerr("ROS shutdown detected.")
                    break
                    
        except rospy.ROSInterruptException:
            print("ROS interrupt received.")
        finally:
            print("Exiting program.")