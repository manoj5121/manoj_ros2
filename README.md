# Manoj_my_mobile_robot
🖼️ Simulation Preview

![Basic Robot Simulation](https://github.com/manoj5121/manoj_ros2/blob/main/Screenshot%20from%202025-04-29%2019-07-00.png?raw=true)

This screenshot shows the basic mobile manipulator simulation running in Gazebo with ROS 2 Humble. The robot includes:

A 4-wheeled differential drive base for navigation
A fully integrated UR5e robotic arm mounted on the base
An OnRobot RG2 gripper attached at the end effector
Proper joint and sensor simulation for motion planning and manipulation
This setup serves as a foundation for testing autonomous navigation, arm motion planning via MoveIt 2, and pick-and-place tasks in simulation
📁Workspace Structure
ros2_ws/
├── src/
│   ├── my_mobile_manipulator_description/   # Robot XACRO, meshes, launch files
│   ├── my_mobile_manipulator_bringup/       # Bringup launch logic
│   ├── Universal_Robots_ROS2_Description/   # UR5e and RG2 gripper description
│   ├── moveit2/                              # MoveIt2 core packages
│   └── moveit_resources/                     # MoveIt2 example configurations

📦 ROS 2 Packages
Install ROS 2 Humble full desktop version:
sudo apt install ros-humble-desktop-full

Install essential dependencies:
sudo apt install \
  ros-humble-joint-state-publisher \
  ros-humble-joint-state-publisher-gui \
  ros-humble-robot-state-publisher \
  ros-humble-xacro \
  ros-humble-rviz2 \
  ros-humble-gazebo-ros-pkgs \
  ros-humble-moveit

Clone the MoveIt2 repositories:

cd ~/ros2_ws/src
git clone https://github.com/ros-planning/moveit2.git
git clone https://github.com/ros-planning/moveit_resources.git

Clone UR5e and RG2 gripper descriptions:

git clone https://github.com/UniversalRobots/Universal_Robots_ROS2_Description.git

🔨 Build Instructions

cd ~/ros2_ws
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install
source install/setup.bash

Launch simulation

ros2 launch my_mobile_manipulator_description spawn_mobile_manipulator.launch.py
ros2 launch my_mobile_manipulator_bringup gazebo.launch.py
ros2 launch my_mobile_manipulator_description display_robot.launch.py

Full bringup with MoveIt and RViz2:

ros2 launch my_mobile_manipulator_bringup my_mobile_manipulator.launch.py

🤖 Robot Description
my_mobile_manipulator_description/urdf/robot.urdf.xacro defines the full mobile manipulator including:

4-wheeled base
ur5e arm from Universal Robots
rg2 gripper (2-finger)
Meshes and robot components are linked from the Universal_Robots_ROS2_Description package.

🧪 Testing
After launching RViz2:
Use "Planning" tab in MoveIt2 to test motion planning.
View TF tree using ros2 run tf2_tools view_frames.

# 🤖 Manoj ROS 2 Workspace
This repository contains a ROS 2 Humble workspace (`ros2_ws`) for simulating and developing a mobile manipulator robot using a 4-wheeled base, UR5e robotic arm, and an OnRobot RG2 gripper. It is built for Gazebo simulation and supports MoveIt and Navigation2 integration.
---
## 📦 Workspace Structure
ros2_ws/ ├── src/ │ ├── my_mobile_manipulator_description/ # URDF/XACRO files │ ├── my_mobile_manipulator_bringup/ # Launch and config │ ├── my_mobile_manipulator_moveit/ # MoveIt config │ └── other_packages/ # Additional ROS 2 packages

---

## 🛠️ Key Features

- ✅ Full URDF/XACRO model of a mobile robot with UR5e arm and RG2 gripper
- ✅ Gazebo and Rviz support
- ✅ Navigation2 integration for autonomous movement
- ✅ MoveIt2 configuration for motion planning and arm control
- ✅ Realistic simulation using ROS 2 Humble and Gazebo

---

## 🚀 How to Use

### 1. Clone this repository
```bash
git clone https://github.com/manoj5121/manoj_ros2.git
cd manoj_ros2

🧱 Dependencies

Ubuntu 22.04
ROS 2 Humble
Gazebo (Fortress or Garden)
MoveIt 2
ros2_control, nav2, joint_state_publisher_gui, robot_state_publisher, etc.

 License
This project is licensed under the MIT License.

👤 Author
Manoj
GitHub: @manoj5121
