## Robot Package Template

This is a GitHub template. You can make your own copy by clicking the green "Use this template" button.

It is recommended that you keep the repo/package name the same, but if you do change it, ensure you do a "Find all" using your IDE (or the built-in GitHub IDE by hitting the `.` key) and rename all instances of `my_bot` to whatever your project's name is.

Note that each directory currently has at least one file in it to ensure that git tracks the files (and, consequently, that a fresh clone has direcctories present for CMake to find). These example files can be removed if required (and the directories can be removed if `CMakeLists.txt` is adjusted accordingly).


# terminal 1
ros2 run rmw_zenoh_cpp rmw_zenohd

ros2 launch r2_ros launch_sim.launch.py


ros2 topic pub /ankle_pos/commands std_msgs/msg/Float64MultiArray   '{data: [-0.523599, -0.523599]}'

        <!-- Hold left_ankle_joint at a commanded angle -->
        <plugin filename="gz-sim-joint-position-controller-system"
                name="gz::sim::systems::JointPositionController">
            <joint_name>left_ankle_joint</joint_name>

            <!-- Pick a ROS-friendly topic name (see note below) -->
            <topic>/left_ankle_joint/cmd_pos</topic>

            <!-- Reasonable starter PID gains; tune as needed -->
            <p_gain>50</p_gain>
            <i_gain>0.1</i_gain>
            <d_gain>1.0</d_gain>
            <!-- Optional: clamp integrator and output -->
            <i_max>1</i_max>
            <i_min>-1</i_min>
            <cmd_max>1000</cmd_max>
            <cmd_min>-1000</cmd_min>
            <initial_position>${-radians(18)}</initial_position>
        </plugin>


        <!-- Hold left_ankle_joint at a commanded angle -->
        <plugin filename="gz-sim-joint-position-controller-system"
                name="gz::sim::systems::JointPositionController">
            <joint_name>right_ankle_joint</joint_name>

            <!-- Pick a ROS-friendly topic name (see note below) -->
            <topic>/right_ankle_joint/cmd_pos</topic>

            <!-- Reasonable starter PID gains; tune as needed -->
            <p_gain>50</p_gain>
            <i_gain>0.1</i_gain>
            <d_gain>1.0</d_gain>
            <!-- Optional: clamp integrator and output -->
            <i_max>1</i_max>
            <i_min>-1</i_min>
            <cmd_max>1000</cmd_max>
            <cmd_min>-1000</cmd_min>
            <initial_position>${-radians(18)}</initial_position>
        </plugin>

        <plugin filename="gz-sim-joint-position-controller-system"
                name="gz::sim::systems::JointPositionController">
            <joint_name>right_shoulder_joint</joint_name>

            <!-- Pick a ROS-friendly topic name (see note below) -->
            <topic>/right_shoulder_joint/cmd_pos</topic>

            <!-- Reasonable starter PID gains; tune as needed -->
            <p_gain>50</p_gain>
            <i_gain>0.1</i_gain>
            <d_gain>1.0</d_gain>
            <!-- Optional: clamp integrator and output -->
            <i_max>1</i_max>
            <i_min>-1</i_min>
            <cmd_max>1000</cmd_max>
            <cmd_min>-1000</cmd_min>
            <initial_position>${radians(36)}</initial_position>
        </plugin>

## Installation

- add rmw_zenoh with:
```
sudo apt update && sudo apt install ros-<DISTRO>-rmw-zenoh-cpp # replace <DISTRO> with the codename for the distribution, eg., rolling
```