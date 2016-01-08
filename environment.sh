#!/usr/bin/env bash
echo "Activating ROS"
source /opt/ros/indigo/setup.bash
echo "Setting up PYTHONPATH"
export PYTHONPATH=$HOME/duckietown/catkin_ws/src:$PYTHONPATH
echo "Activating development"
source ~/duckietown/catkin_ws/devel/setup.bash
echo "Setup ROS_HOSTNAME"
export ROS_HOSTNAME=$HOSTNAME.local
exec "$@" #Passes arguments. Need this for ROS remote launching to work.
