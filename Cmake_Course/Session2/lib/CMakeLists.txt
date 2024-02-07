cmake_minimum_required(VERSION 3.20)

message(STATUS "Hello from CMakeLists.txt: Wifi Module")

# Add the source files for this library   
add_library(Wifi_lib
    Wifi.cpp 
    Wifi.hpp
)