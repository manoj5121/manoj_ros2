set(_AMENT_PACKAGE_NAME "moveit_hybrid_planning")
set(moveit_hybrid_planning_VERSION "2.5.9")
set(moveit_hybrid_planning_MAINTAINER "MoveIt Release Team <moveit_releasers@googlegroups.com>")
set(moveit_hybrid_planning_BUILD_DEPENDS "moveit_common" "ament_index_cpp" "moveit_msgs" "moveit_core" "moveit_ros_planning" "moveit_ros_planning_interface" "pluginlib" "rclcpp" "rclcpp_action" "rclcpp_components" "std_msgs" "std_srvs" "tf2_ros" "trajectory_msgs")
set(moveit_hybrid_planning_BUILDTOOL_DEPENDS "ament_cmake")
set(moveit_hybrid_planning_BUILD_EXPORT_DEPENDS "moveit_common" "ament_index_cpp" "moveit_msgs" "moveit_core" "moveit_ros_planning" "moveit_ros_planning_interface" "pluginlib" "rclcpp" "rclcpp_action" "rclcpp_components" "std_msgs" "std_srvs" "tf2_ros" "trajectory_msgs")
set(moveit_hybrid_planning_BUILDTOOL_EXPORT_DEPENDS )
set(moveit_hybrid_planning_EXEC_DEPENDS "controller_manager" "position_controllers" "robot_state_publisher" "rviz2" "moveit_resources_panda_moveit_config" "moveit_common" "ament_index_cpp" "moveit_msgs" "moveit_core" "moveit_ros_planning" "moveit_ros_planning_interface" "pluginlib" "rclcpp" "rclcpp_action" "rclcpp_components" "std_msgs" "std_srvs" "tf2_ros" "trajectory_msgs")
set(moveit_hybrid_planning_TEST_DEPENDS "ament_cmake_gtest" "ament_lint_auto" "ament_lint_common" "moveit_planners_ompl" "ros_testing")
set(moveit_hybrid_planning_GROUP_DEPENDS )
set(moveit_hybrid_planning_MEMBER_OF_GROUPS )
set(moveit_hybrid_planning_DEPRECATED "")
set(moveit_hybrid_planning_EXPORT_TAGS)
list(APPEND moveit_hybrid_planning_EXPORT_TAGS "<build_type>ament_cmake</build_type>")
list(APPEND moveit_hybrid_planning_EXPORT_TAGS "<moveit_hybrid_planning plugin=\"simple_sampler_plugin.xml\"/>")
list(APPEND moveit_hybrid_planning_EXPORT_TAGS "<moveit_hybrid_planning plugin=\"replan_invalidated_trajectory_plugin.xml\"/>")
list(APPEND moveit_hybrid_planning_EXPORT_TAGS "<moveit_hybrid_planning plugin=\"single_plan_execution_plugin.xml\"/>")
list(APPEND moveit_hybrid_planning_EXPORT_TAGS "<moveit_hybrid_planning plugin=\"forward_trajectory_plugin.xml\"/>")
