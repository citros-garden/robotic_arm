#!/bin/bash
set -e

source /opt/ros/foxy/setup.bash
source /workspaces/robotic_arm/install/local_setup.bash 

exec "$@"
