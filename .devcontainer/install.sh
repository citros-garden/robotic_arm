#!/bin/bash

CITROS_MODEL_PATH=/workspaces/citros_example_robotic_arm/gazebo_models
GAZEBO_MODEL_PATH=~/.gazebo/models/

mkdir -p ${GAZEBO_MODEL_PATH}

yes | cp -rf ${CITROS_MODEL_PATH}/foldable_table ${GAZEBO_MODEL_PATH}
yes | cp -rf ${CITROS_MODEL_PATH}/person_standing ${GAZEBO_MODEL_PATH}

git submodule update --init --recursive

cd ros2_ws
colcon build

echo "
==============================================
 ██████╗██╗████████╗██████╗  ██████╗ ███████╗
██╔════╝██║╚══██╔══╝██╔══██╗██╔═══██╗██╔════╝
██║     ██║   ██║   ██████╔╝██║   ██║███████╗
██║     ██║   ██║   ██╔══██╗██║   ██║╚════██║
╚██████╗██║   ██║   ██║  ██║╚██████╔╝███████║
 ╚═════╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝                                        
=============================================="

