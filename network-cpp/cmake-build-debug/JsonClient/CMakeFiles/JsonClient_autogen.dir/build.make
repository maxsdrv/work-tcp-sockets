# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maxim/Cpp/network/work-tcp-sockets/network-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug

# Utility rule file for JsonClient_autogen.

# Include any custom commands dependencies for this target.
include JsonClient/CMakeFiles/JsonClient_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include JsonClient/CMakeFiles/JsonClient_autogen.dir/progress.make

JsonClient/CMakeFiles/JsonClient_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target JsonClient"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/JsonClient && /usr/local/bin/cmake -E cmake_autogen /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/JsonClient/CMakeFiles/JsonClient_autogen.dir/AutogenInfo.json Debug

JsonClient_autogen: JsonClient/CMakeFiles/JsonClient_autogen
JsonClient_autogen: JsonClient/CMakeFiles/JsonClient_autogen.dir/build.make
.PHONY : JsonClient_autogen

# Rule to build all files generated by this target.
JsonClient/CMakeFiles/JsonClient_autogen.dir/build: JsonClient_autogen
.PHONY : JsonClient/CMakeFiles/JsonClient_autogen.dir/build

JsonClient/CMakeFiles/JsonClient_autogen.dir/clean:
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/JsonClient && $(CMAKE_COMMAND) -P CMakeFiles/JsonClient_autogen.dir/cmake_clean.cmake
.PHONY : JsonClient/CMakeFiles/JsonClient_autogen.dir/clean

JsonClient/CMakeFiles/JsonClient_autogen.dir/depend:
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maxim/Cpp/network/work-tcp-sockets/network-cpp /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/JsonClient /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/JsonClient /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/JsonClient/CMakeFiles/JsonClient_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : JsonClient/CMakeFiles/JsonClient_autogen.dir/depend
