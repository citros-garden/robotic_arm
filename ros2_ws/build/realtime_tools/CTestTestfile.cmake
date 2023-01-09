# CMake generated Testfile for 
# Source directory: /workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools
# Build directory: /workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/cppcheck.xunit.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/foxy/bin/ament_cppcheck" "--xunit-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/cppcheck.xunit.xml" "--language" "c++")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "300" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cppcheck.cmake;61;ament_add_test;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;25;ament_cppcheck;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(cpplint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/cpplint.xunit.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cpplint/cpplint.txt" "--command" "/opt/ros/foxy/bin/ament_cpplint" "--xunit-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/cpplint.xunit.xml")
set_tests_properties(cpplint PROPERTIES  LABELS "cpplint;linter" TIMEOUT "120" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cpplint/cmake/ament_cpplint.cmake;68;ament_add_test;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;26;ament_cpplint;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/lint_cmake.xunit.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/foxy/bin/ament_lint_cmake" "--xunit-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;27;ament_lint_cmake;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/uncrustify.xunit.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/foxy/bin/ament_uncrustify" "--xunit-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/uncrustify.xunit.xml" "--language" "C++")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_uncrustify/cmake/ament_uncrustify.cmake;65;ament_add_test;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;28;ament_uncrustify;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(realtime_box_tests "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_box_tests.gtest.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cmake_gmock/realtime_box_tests.txt" "--command" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_box_tests" "--gtest_output=xml:/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_box_tests.gtest.xml")
set_tests_properties(realtime_box_tests PROPERTIES  LABELS "gmock" REQUIRED_FILES "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_box_tests" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;38;ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(realtime_buffer_tests "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_buffer_tests.gtest.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cmake_gmock/realtime_buffer_tests.txt" "--command" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_buffer_tests" "--gtest_output=xml:/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_buffer_tests.gtest.xml")
set_tests_properties(realtime_buffer_tests PROPERTIES  LABELS "gmock" REQUIRED_FILES "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_buffer_tests" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;41;ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(realtime_clock_tests "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_clock_tests.gtest.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cmake_gmock/realtime_clock_tests.txt" "--command" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_clock_tests" "--gtest_output=xml:/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_clock_tests.gtest.xml")
set_tests_properties(realtime_clock_tests PROPERTIES  LABELS "gmock" REQUIRED_FILES "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_clock_tests" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;44;ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(realtime_publisher_tests "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_publisher_tests.gtest.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cmake_gmock/realtime_publisher_tests.txt" "--command" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_publisher_tests" "--gtest_output=xml:/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_publisher_tests.gtest.xml")
set_tests_properties(realtime_publisher_tests PROPERTIES  LABELS "gmock" REQUIRED_FILES "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_publisher_tests" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;47;ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
add_test(realtime_server_goal_handle_tests "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_server_goal_handle_tests.gtest.xml" "--package-name" "realtime_tools" "--output-file" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/ament_cmake_gmock/realtime_server_goal_handle_tests.txt" "--command" "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_server_goal_handle_tests" "--gtest_output=xml:/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/test_results/realtime_tools/realtime_server_goal_handle_tests.gtest.xml")
set_tests_properties(realtime_server_goal_handle_tests PROPERTIES  LABELS "gmock" REQUIRED_FILES "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools/realtime_server_goal_handle_tests" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/ros2_ws/build/realtime_tools" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;106;ament_add_test;/opt/ros/foxy/share/ament_cmake_gmock/cmake/ament_add_gmock.cmake;52;_ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;51;ament_add_gmock;/workspaces/citros_example_robotic_arm/ros2_ws/src/ros-controls/realtime_tools/CMakeLists.txt;0;")
subdirs("gmock")
subdirs("gtest")
