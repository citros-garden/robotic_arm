# CMake generated Testfile for 
# Source directory: /workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware
# Build directory: /workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(clang_format "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/clang_format.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_clang_format/clang_format.txt" "--command" "/opt/ros/foxy/bin/ament_clang_format" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/clang_format.xunit.xml" "src" "include" "--config" "../.clang-format")
set_tests_properties(clang_format PROPERTIES  LABELS "clang_format;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_clang_format/cmake/ament_clang_format.cmake;57;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;65;ament_clang_format;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/copyright.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_copyright/copyright.txt" "--command" "/opt/ros/foxy/bin/ament_copyright" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/copyright.xunit.xml" "src" "include" "package.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_copyright/cmake/ament_copyright.cmake;41;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;66;ament_copyright;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/cppcheck.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/foxy/bin/ament_cppcheck" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/cppcheck.xunit.xml" "src" "include")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "300" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_cppcheck/cmake/ament_cppcheck.cmake;61;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;67;ament_cppcheck;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/lint_cmake.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/foxy/bin/ament_lint_cmake" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/lint_cmake.xunit.xml" "CMakeLists.txt")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;68;ament_lint_cmake;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(flake8 "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/flake8.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_flake8/flake8.txt" "--command" "/opt/ros/foxy/bin/ament_flake8" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/flake8.xunit.xml")
set_tests_properties(flake8 PROPERTIES  LABELS "flake8;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_flake8/cmake/ament_flake8.cmake;48;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;69;ament_flake8;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(pep257 "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/pep257.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_pep257/pep257.txt" "--command" "/opt/ros/foxy/bin/ament_pep257" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/pep257.xunit.xml")
set_tests_properties(pep257 PROPERTIES  LABELS "pep257;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_pep257/cmake/ament_pep257.cmake;41;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;70;ament_pep257;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/foxy/share/ament_cmake_test/cmake/run_test.py" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/xmllint.xunit.xml" "--package-name" "franka_hardware" "--output-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/ament_xmllint/xmllint.txt" "--command" "/opt/ros/foxy/bin/ament_xmllint" "--xunit-file" "/workspaces/citros_example_robotic_arm/franka_ros2_ws/build/franka_hardware/test_results/franka_hardware/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware" _BACKTRACE_TRIPLES "/opt/ros/foxy/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/foxy/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;71;ament_xmllint;/workspaces/citros_example_robotic_arm/franka_ros2_ws/src/franka_ros2/franka_hardware/CMakeLists.txt;0;")