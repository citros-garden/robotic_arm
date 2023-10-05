#!/bin/bash

CITROS_MODEL_PATH=/workspaces/robotic_arm/gazebo_models
GAZEBO_MODEL_PATH=~/.gazebo/models/

mkdir -p ${GAZEBO_MODEL_PATH}

yes | cp -rf ${CITROS_MODEL_PATH}/foldable_table ${GAZEBO_MODEL_PATH}
yes | cp -rf ${CITROS_MODEL_PATH}/person_standing ${GAZEBO_MODEL_PATH}

colcon build
echo "source /workspaces/robotic_arm/install/local_setup.bash" >> ~/.bashrc

echo "
==============================================
 ██████╗██╗████████╗██████╗  ██████╗ ███████╗
██╔════╝██║╚══██╔══╝██╔══██╗██╔═══██╗██╔════╝
██║     ██║   ██║   ██████╔╝██║   ██║███████╗
██║     ██║   ██║   ██╔══██╗██║   ██║╚════██║
╚██████╗██║   ██║   ██║  ██║╚██████╔╝███████║
 ╚═════╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝                                        
=============================================="

