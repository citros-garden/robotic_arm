'''
Author: David Valencia
Date: 15 / 10 /2021

Describer:  
			
			
			This scrip spawn the robot in gazebo and LOAD and START a basic joint_trajectory_controller
			
			The info and configuration of the controller can be found in the config folder:
			
			/src/my_doosan_pkg/config/simple_controller.yaml

			
			Just for testing purposes inside this packages only
			sas
			- Robot model m1013 color white
			- Robot model a0912 color blue
'''

import os
import sys
from launch_ros.actions import Node
from launch import LaunchDescription, launch_description_sources
from launch.substitutions import Command
from launch.actions import ExecuteProcess, EmitEvent, IncludeLaunchDescription, DeclareLaunchArgument, OpaqueFunction, RegisterEventHandler, LogInfo, TimerAction
from ament_index_python.packages import get_package_share_directory
from launch.launch_description_sources import FrontendLaunchDescriptionSource
from launch.event_handlers import (OnExecutionComplete, OnProcessExit,
                                OnProcessIO, OnProcessStart, OnShutdown)
from launch.events import Shutdown, process

class bcolors:
	BLUE = '\033[94m'
	WARNING = '\033[93m'
	GREEN = '\033[92m'
	FAIL = '\033[91m'
	ENDC = '\033[0m'

print('''\n\n==============================================
 ██████╗██╗████████╗██████╗  ██████╗ ███████╗
██╔════╝██║╚══██╔══╝██╔══██╗██╔═══██╗██╔════╝
██║     ██║   ██║   ██████╔╝██║   ██║███████╗
██║     ██║   ██║   ██╔══██╗██║   ██║╚════██║
╚██████╗██║   ██║   ██║  ██║╚██████╔╝███████║
 ╚═════╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝                                        
==============================================\n\n''')

try:
	headless = True if sys.argv[4].split(":=")[1] == 'True' else False
except:
	print(f"{bcolors.WARNING}Gazebo mode not selected, running default with GUI{bcolors.ENDC}")
	headless = False

def generate_launch_description():

	robot_config = os.path.join(
        get_package_share_directory('my_doosan_pkg'),
        'config',
        'params.yaml'
        )
	robot_model = 'a0912'

	xacro_file = get_package_share_directory('my_doosan_pkg') + '/description'+'/xacro/'+ robot_model +'.urdf.xacro'

	setpoints = Node(
        package = 'my_doosan_pkg',
        name = 'trajectory_points_act_server',
        executable = 'trajectory_points_act_server',
        parameters = [robot_config]
    )

	# Robot State Publisher 
	robot_state_publisher = Node(package    ='robot_state_publisher',
								 executable ='robot_state_publisher',
								 name       ='robot_state_publisher',
								 output     ='both',
								 parameters =[{'robot_description': Command(['xacro', ' ', xacro_file])           
								}])


	# Spawn the robot in Gazebo
	spawn_entity_robot = Node(package     ='gazebo_ros', 
							  executable  ='spawn_entity.py', 
							  arguments   = ['-entity', 'my_doosan_robot', '-topic', 'robot_description'],
							  output      ='screen')

	# Gazebo   
	world_file_name = 'my_empty_world.world'
	world = os.path.join(get_package_share_directory('my_doosan_pkg'), 'worlds', world_file_name)
	mode = 'gzserver' if headless == True else 'gazebo'
	gazebo_node = ExecuteProcess(cmd=[mode, '--verbose', world,'-s', 'libgazebo_ros_factory.so'], output='screen')

	# load and START the controllers in launch file
	
	load_joint_state_broadcaster = ExecuteProcess(
										cmd=['ros2', 'control', 'load_controller', '--set-state', 'start','joint_state_broadcaster'],
										output='screen')

	
	load_joint_trajectory_controller = ExecuteProcess( 
										cmd=['ros2', 'control', 'load_controller', '--set-state', 'start', 'joint_trajectory_controller'], 
										output='screen')

	bridge_dir = get_package_share_directory('rosbridge_server')
	included_launch = IncludeLaunchDescription(
        launch_description_sources.FrontendLaunchDescriptionSource(
                bridge_dir + '/launch/rosbridge_websocket_launch.xml'))

	
	sys_shut_down = RegisterEventHandler(OnProcessExit(
		target_action=setpoints,
        on_exit=[
                    LogInfo(msg=(f'{bcolors.GREEN}The robot has reached its final position!{bcolors.ENDC}')),
                    EmitEvent(event=Shutdown(
                        reason='Finished'))
		]		
	))

	ld =  LaunchDescription([setpoints, robot_state_publisher, spawn_entity_robot, gazebo_node, load_joint_state_broadcaster, load_joint_trajectory_controller, included_launch, sys_shut_down  ])

	return ld