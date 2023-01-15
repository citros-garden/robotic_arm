# General Info

This repository contains a robotic arm example for CITROS integration.
The robotic arm model and configuration was imported from [this](https://github.com/dvalenciar/robotic_arm_environment) Github project.

# About the example

This example simulate [Doosan a0912](https://www.doosanrobotics.com/en/products/series/a0912) robotics arm in ROS2-Gazebo environment. 

![image](ros2_ws/src/robotic_arm_environment/images/readme.png)

# Installation

1. Clone this repository:

        git clone git@github.com:lulav/citros_example_robotic_arm.git

2. in VSCode, open the repository inside the devcontainer with: `open inside container`

3. Source the workspace:

        source ros2_ws/install/local_setup.bash

**RECOMMENDED** 

There are pre-configured workspace [tasks](https://www.allisonthackston.com/articles/vscode-tasks.html) for building and running the simulation.
Create a shortcut for task-running and select the desired option.

# Run

Run with:

        ros2 launch my_doosan_pkg my_doosan_gazebo_controller.launch.py



