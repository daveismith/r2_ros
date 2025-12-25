#!/bin/bash
export RMW_IMPLEMENTATION=rmw_zenoh_cpp
export ZENOH_ROUTER_CONFIG_URI=/home/davids/r2_ros/DEFAULT_RMW_ZENOH_ROUTER_CONFIG.json5
source /opt/ros/jazzy/setup.bash
source install/setup.bash
export GZ_SIM_RESOURCE_PATH=`pwd`/install/r2_ros/share/:$GZ_SIM_RESOURCE_PATH