'''
Author: David Valencia
Date: 26 / 08 /2021

Describer:  An action Client to move the robot joint to a specific position

			This script send the position "angles" of each joint under 
			
			the ACTION - SERVICE /joint_trajectory_controller/joint_trajectory
			
			I need to run first the my_doosan_controller in order to load and start the controllers
			Update: I can also run my environment launch file 

			Executable name in the setup file: trajectory_points_act_server		
'''

import rclpy
from rclpy.duration import Duration
from rclpy.action import ActionClient
from rclpy.node import Node
from control_msgs.action import FollowJointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import time
import ikpy.chain
import numpy as np


class TrajectoryActionClient(Node):

	def __init__(self):

		super().__init__('points_publisher_node_action_client')
		self.action_client = ActionClient (self, FollowJointTrajectory, '/joint_trajectory_controller/follow_joint_trajectory')

		self.declare_parameter('pos0')
		self.declare_parameter('pos1')
		self.declare_parameter('pos2')
		self.declare_parameter('ori0')
		self.declare_parameter('ori1')
		self.declare_parameter('ori2')

		self.pos0 = self.get_parameter('pos0').get_parameter_value().double_value
		self.pos1 = self.get_parameter('pos1').get_parameter_value().double_value
		self.pos2 = self.get_parameter('pos2').get_parameter_value().double_value
		self.ori0 = self.get_parameter('ori0').get_parameter_value().double_value
		self.ori1 = self.get_parameter('ori1').get_parameter_value().double_value
		self.ori2 = self.get_parameter('ori2').get_parameter_value().double_value

	def send_goal(self):
		
		self.get_logger().info(f"Launching inverse kinematic...")
		# Import the robot
		robot_filepath = "/workspaces/robotic_arm/src/inverse_kinematic_pkg/description/urdf/a0912.blue.urdf"
		my_chain = ikpy.chain.Chain.from_urdf_file(robot_filepath, base_elements=["base_0"])

		# Set target
		target_position = [self.pos0, self.pos1, self.pos2]

		# Calculate IK
		joints_angles = my_chain.inverse_kinematics(target_position)
		print(f"The angles of each joints are : [{joints_angles[0]:.3f}, {joints_angles[1]:.3f}, {joints_angles[2]:.3f}, \
		{joints_angles[3]:.3f}, {joints_angles[4]:.3f}, {joints_angles[5]:.3f}]", )

		# Verify results:
		real_frame = my_chain.forward_kinematics(my_chain.inverse_kinematics(target_position))
		print("Computed position vector : %s, original position vector : %s" % (real_frame[:3, 3], target_position))

		points = []
		point_msg = JointTrajectoryPoint()
		point_msg.positions = [joints_angles[0], joints_angles[1],joints_angles[2],joints_angles[3],joints_angles[4],joints_angles[5]]
		point_msg.time_from_start = Duration(seconds=5.0).to_msg()

		points.append(point_msg)

		joint_names = ['joint1','joint2','joint3','joint4','joint5','joint6']
		goal_msg = FollowJointTrajectory.Goal()
		goal_msg.goal_time_tolerance = Duration(seconds=1, nanoseconds=0).to_msg()
		goal_msg.trajectory.joint_names = joint_names
		goal_msg.trajectory.points = points

		self.action_client.wait_for_server()
		self.send_goal_future = self.action_client.send_goal_async(goal_msg, feedback_callback=self.feedback_callback)
		self.send_goal_future.add_done_callback(self.goal_response_callback)

	
	def goal_response_callback(self, future):
		
		goal_handle = future.result()

		if not goal_handle.accepted:
			self.get_logger().info('Goal rejected ')
			return

		self.get_logger().info('Goal accepted')

		self.get_result_future= goal_handle.get_result_async()
		self.get_result_future.add_done_callback(self.get_result_callback)

	def get_result_callback (self, future):
		
		result = future.result().result
		self.get_logger().info('Result: '+str(result))
		rclpy.shutdown()

		
	def feedback_callback(self, feedback_msg):
		feedback = feedback_msg.feedback


def main(args=None):

	rclpy.init()

	time.sleep(5)
	
	action_client = TrajectoryActionClient()
	future = action_client.send_goal()
	rclpy.spin(action_client)

if __name__ == '__main__':
	main()