
#   CMakeLists.txt

#   Indicates the minimum version of CMake required to build the project
cmake_minimum_required(VERSION 3.10)

#   Name of the project and give it a version
project(MyProject2 VERSION 1.0.0)

#  or u can use 
#  set(PROJECT_VERSION "1.0.0")
#  project(MyProject2)
#  project_version(MyProject2 VERSION ${PROJECT_VERSION})


#  Add an executable to the project using the specified source files (here the project and the .exe have the same name but we can use different namings)
#  Once we build we can run the .exe file using the command line trhough the name executable (specified in this function).
add_executable(MyProject2 main.cpp src/calc.cpp)
#  Don't forget to add the source file of the calc module.
#  Note that we re not using the Wifi.cpp file here because we are using the library instead of the source file.

# Add the subdirectory of the library to the project
add_subdirectory(${CMAKE_SOURCE_DIR}/lib)
# This will allow cmake to find the target in that directory (and bring the CmakeLists.txt of this directory to the current location) : in fact the message "Hello from lib:CMakeLists.txt: Wifi Module" will be prented here

target_include_directories(MyProject2 PUBLIC include/ lib/)
#lib is add here to prevent the error in the main.cpp file (Since we are includeing the wifi.hpp header file in the main.cpp file and the wifi.hpp file)


#  To print a message from the cuurent CmakeLists.txt in the console we use the following command:
message( STATUS "Hello from CMakeLists.txt: main")

#  To link the library to the project we use the following command:
target_link_libraries(MyProject2 PUBLIC Wifi_lib)


