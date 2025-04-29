from launch import LaunchDescription
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory
import os

def generate_launch_description():
    description_pkg = get_package_share_directory('my_mobile_manipulator_description')
    urdf_file = os.path.join(description_pkg, 'urdf', 'robot.urdf.xacro')

    return LaunchDescription([
        # Start robot_state_publisher
        Node(
            package='robot_state_publisher',
            executable='robot_state_publisher',
            name='robot_state_publisher',
            output='screen',
            parameters=[{'use_sim_time': True}],
            arguments=[urdf_file],
        )
    ])

