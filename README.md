# General Info

This repository contains a robotic arm example for CITROS integration.
The robotic arm model and configuration was imported from [franka github page](https://github.com/frankaemika/franka_ros2).

# Installation

1. Clone this repository:

        git clone git@github.com:lulav/citros_example_robotic_arm.git

2. Init submodules:

        git submodule update --init --recursive

3. Build the workspace:

        cd franka_ros2_ws
        colcon build
        source install/local_setup.bash

# Run

Run visualization with:

        ros2 launch my_doosan_pkg my_doosan_gazebo_controller.launch.py

And in another terminal:

        ros2 run my_doosan_pkg trajectory_points_act_server


