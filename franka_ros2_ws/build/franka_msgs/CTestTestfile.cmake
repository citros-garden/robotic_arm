# CMake generated Testfile for 
# Source directory: /workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs
# Build directory: /workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/copyright.xunit.xml" "--package-name" "franka_msgs" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/ament_copyright/copyright.txt" "--command" "/opt/ros/foxy/bin/ament_copyright" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_copyright.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;18;ament_copyright;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;21;ament_package;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/lint_cmake.xunit.xml" "--package-name" "franka_msgs" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/foxy/bin/ament_lint_cmake" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;21;ament_package;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/xmllint.xunit.xml" "--package-name" "franka_msgs" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/ament_xmllint/xmllint.txt" "--command" "/opt/ros/foxy/bin/ament_xmllint" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_msgs/test_results/franka_msgs/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/foxy/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/foxy/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;21;ament_package;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_msgs/CMakeLists.txt;0;")
subdirs("franka_msgs__py")
