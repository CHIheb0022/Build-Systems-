# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/chiheb/build_system/Cmake_Course/Session2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/chiheb/build_system/Cmake_Course/Session2/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/Wifi_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/Wifi_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/Wifi_lib.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/Wifi_lib.dir/flags.make

lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o: lib/CMakeFiles/Wifi_lib.dir/flags.make
lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o: ../lib/Wifi.cpp
lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o: lib/CMakeFiles/Wifi_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/chiheb/build_system/Cmake_Course/Session2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o"
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o -MF CMakeFiles/Wifi_lib.dir/Wifi.cpp.o.d -o CMakeFiles/Wifi_lib.dir/Wifi.cpp.o -c /root/chiheb/build_system/Cmake_Course/Session2/lib/Wifi.cpp

lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Wifi_lib.dir/Wifi.cpp.i"
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/chiheb/build_system/Cmake_Course/Session2/lib/Wifi.cpp > CMakeFiles/Wifi_lib.dir/Wifi.cpp.i

lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Wifi_lib.dir/Wifi.cpp.s"
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/chiheb/build_system/Cmake_Course/Session2/lib/Wifi.cpp -o CMakeFiles/Wifi_lib.dir/Wifi.cpp.s

# Object files for target Wifi_lib
Wifi_lib_OBJECTS = \
"CMakeFiles/Wifi_lib.dir/Wifi.cpp.o"

# External object files for target Wifi_lib
Wifi_lib_EXTERNAL_OBJECTS =

lib/libWifi_lib.a: lib/CMakeFiles/Wifi_lib.dir/Wifi.cpp.o
lib/libWifi_lib.a: lib/CMakeFiles/Wifi_lib.dir/build.make
lib/libWifi_lib.a: lib/CMakeFiles/Wifi_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/chiheb/build_system/Cmake_Course/Session2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libWifi_lib.a"
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/Wifi_lib.dir/cmake_clean_target.cmake
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Wifi_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/Wifi_lib.dir/build: lib/libWifi_lib.a
.PHONY : lib/CMakeFiles/Wifi_lib.dir/build

lib/CMakeFiles/Wifi_lib.dir/clean:
	cd /root/chiheb/build_system/Cmake_Course/Session2/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/Wifi_lib.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/Wifi_lib.dir/clean

lib/CMakeFiles/Wifi_lib.dir/depend:
	cd /root/chiheb/build_system/Cmake_Course/Session2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/chiheb/build_system/Cmake_Course/Session2 /root/chiheb/build_system/Cmake_Course/Session2/lib /root/chiheb/build_system/Cmake_Course/Session2/build /root/chiheb/build_system/Cmake_Course/Session2/build/lib /root/chiheb/build_system/Cmake_Course/Session2/build/lib/CMakeFiles/Wifi_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/Wifi_lib.dir/depend

