
#   CMakeLists.txt

#   Indicates the minimum version of CMake required to build the project
cmake_minimum_required(VERSION 3.10)

#   Name of the project and give it a version
project(Myproject1 VERSION 1.0.0)

#  or u can use 
#  set(PROJECT_VERSION "1.0.0")
#  project(Myproject1)
#  project_version(Myproject1 VERSION ${PROJECT_VERSION})


#  Add an executable to the project using the specified source files (here the project and the .exe have the same name but we can use different namings)
#  Once we build we can run the .exe file using the command line trhough the name executable (specified in this function).
add_executable(Myproject1 main.cpp src/calc.cpp)
#  Don't forget to add the source file of the calc module.


#[[

Or we can use the following syntax to add the source files:

# Set is the equivalent of affecting operator
set(SOURCES
    src/calc.cpp
    main.cpp
)
add_executable(Myproject1 ${SOURCES})

// ( #[[commen ... ] ]) for Multiple line comment
]]


#  Link the files under include to be accecible in outsider files.
#  This prevent the error "no such file or directory in the line 2 (#include calc.h)""
target_include_directories(Myproject1 PUBLIC include/)

#  ${CMAKE_CURRENT_SOURCE_DIR} is a built-in variable indicating the directory where the CMakeLists.txt file is located


#  To print a message in the console we use the following command:

message("Hello from CMakeLists.txt")

# or use the following command to print the source files in the console:

message("SRC files: ${SOURCES}")

# for satut messages 

message(STATUS "This is a status message")

# for warning messages

message(WARNING "This is a warning message")

# for error messages

#message(FATAL_ERROR "This is an error message") # note that this will stop the build process

# built-in variables in CMake:


# 1- CMAKE_SOURCE_DIR : built-in variable indicating the root directory of the CMakeLists.txt file is located : if this CmakeLists.txt is located in the root directory of the project, then CMAKE_SOURCE_DIR will be the same as CMAKE_CURRENT_SOURCE_DIR
message(STATUS "built-in CMAKE_SOURCE_DIR varibale is ${CMAKE_SOURCE_DIR}")
# 2- PROJECT_NAME : built-in variable indicating the name of the project
message(STATUS "The name of the project is ${PROJECT_NAME}")
# 3- CMAKE_CURRENT_LIST_FILE : list the files in where CmakeLists.txt is located 
message(STATUS "Current list file is ${CMAKE_CURRENT_LIST_FILE}")
# 4- CMAKE_CURRENT_LIST_DIR : list the directory in where CmakeLists.txt is located
message(STATUS "Current list dir is ${CMAKE_CURRENT_LIST_DIR}")
# 5- PRJECT_VERSION : built-in variable indicating the version of the project
message(STATUS "The version of the project is ${PROJECT_VERSION}")
# 6- CMAKE_CURRENT_SOURCE_DIR : built-in variable indicating the directory where the CMakeLists.txt file is located
message(STATUS "The current directory is ${CMAKE_CURRENT_SOURCE_DIR}")
# 7- CMAKE_BINARY_DIR : built-in variable indicating the directory where the build files are located
message(STATUS "The binary directory is ${CMAKE_BINARY_DIR}")
# 8- CMAKE_CXX_COMPILER : built-in variable indicating the C++ compiler
message(STATUS "The C++ compiler is ${CMAKE_CXX_COMPILER}")


#  To set the C++ standard we use the following command:
set(CMAKE_CXX_STANDARD 11)
#  To indicate it's required to have the C++ standard we are using we use the following command 
set(CMAKE_CXX_STANDARD_REQUIRED True)


set(MY_VAR 1)

#  Using if and else statements in CMakeLists.txt file

#  The following command is used to check if the variable is defined or not

if(DEFINED MY_VAR)
    message(STATUS "MY_VAR is defined")
else()
    message(STATUS "MY_VAR is not defined") 
endif()

#  The following command is used to check if the variable is true or not

if(MY_VAR)
    message(STATUS "MY_VAR is true")
else()
    message(STATUS "MY_VAR is false")    
endif()

#  The following command is used to check if the variable is equal to a specific value or not

if("${MY_VAR}" STREQUAL 1)
    message(STATUS "MY_VAR is equal to 1")
else()
    message(STATUS "MY_VAR is not equal to 1")

endif()

#  The following command is used to check if the variable is greater than a specific value or not

if("${MY_VAR}" GREATER 0)
    message(STATUS "MY_VAR is greater than 0")
else()
    message(STATUS "MY_VAR is not greater than 0")
endif()

#  The following command is used to check if the file main.cpp exists or not
if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/main.cpp")
    message(STATUS "main.cpp exists")
else()
    message(STATUS "main.cpp does not exist")
endif ()

# For loop in CMakeLists.txt file
set(NUMBERS 5 8 9 3 6)
foreach(NUMBER ${NUMBERS})
    message(STATUS "Number: ${NUMBER}")
endforeach()

#  While loop in CMakeLists.txt file
set(COUNTER 0)
while(${COUNTER} LESS 5)
    message(STATUS "Counter: ${COUNTER}")
    math(EXPR COUNTER "${COUNTER} + 1")
endwhile()

#  The following command is used to set an environment variable 
set(ENV{MY_ENV_VAR} "Hello from CMakeLists.txt")

# This command affects only the current CMake process, not the process from which CMake was called, nor the system environment at large, nor the environment of subsequent build or test processes.
# If no argument is given after ENV{<variable>} or if <value> is an empty string, then this command will clear any existing value of the environment variable.

