#!/bin/bash
cd ../franka_ros2_ws/
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release
echo /workspaces/citros_example_robotic_arm/franka_ros2_ws/install/local_setup.sh