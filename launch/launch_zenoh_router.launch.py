from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package="rmw_zenoh_cpp",
            executable="rmw_zenohd",
            parameters=[],
            output="screen"
        )
    ])