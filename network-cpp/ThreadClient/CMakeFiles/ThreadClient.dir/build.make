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
CMAKE_COMMAND = /home/maxim/CLion-2021.3.3/clion-2021.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/maxim/CLion-2021.3.3/clion-2021.3.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp

# Include any dependencies generated for this target.
include ThreadClient/CMakeFiles/ThreadClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ThreadClient/CMakeFiles/ThreadClient.dir/compiler_depend.make

# Include the progress variables for this target.
include ThreadClient/CMakeFiles/ThreadClient.dir/progress.make

# Include the compile flags for this target's objects.
include ThreadClient/CMakeFiles/ThreadClient.dir/flags.make

ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/flags.make
ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o: ThreadClient/ThreadClient_autogen/mocs_compilation.cpp
ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o -MF CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o -c /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/ThreadClient_autogen/mocs_compilation.cpp

ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.i"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/ThreadClient_autogen/mocs_compilation.cpp > CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.i

ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.s"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/ThreadClient_autogen/mocs_compilation.cpp -o CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.s

ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/flags.make
ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o: ThreadClient/src/Thread.cpp
ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o -MF CMakeFiles/ThreadClient.dir/src/Thread.cpp.o.d -o CMakeFiles/ThreadClient.dir/src/Thread.cpp.o -c /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/Thread.cpp

ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadClient.dir/src/Thread.cpp.i"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/Thread.cpp > CMakeFiles/ThreadClient.dir/src/Thread.cpp.i

ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadClient.dir/src/Thread.cpp.s"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/Thread.cpp -o CMakeFiles/ThreadClient.dir/src/Thread.cpp.s

ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/flags.make
ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o: ThreadClient/src/ThreadClient.cpp
ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o -MF CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o.d -o CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o -c /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/ThreadClient.cpp

ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.i"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/ThreadClient.cpp > CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.i

ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.s"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/ThreadClient.cpp -o CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.s

ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/flags.make
ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o: ThreadClient/src/main.cpp
ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o: ThreadClient/CMakeFiles/ThreadClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o -MF CMakeFiles/ThreadClient.dir/src/main.cpp.o.d -o CMakeFiles/ThreadClient.dir/src/main.cpp.o -c /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/main.cpp

ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadClient.dir/src/main.cpp.i"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/main.cpp > CMakeFiles/ThreadClient.dir/src/main.cpp.i

ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadClient.dir/src/main.cpp.s"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/src/main.cpp -o CMakeFiles/ThreadClient.dir/src/main.cpp.s

# Object files for target ThreadClient
ThreadClient_OBJECTS = \
"CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/ThreadClient.dir/src/Thread.cpp.o" \
"CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o" \
"CMakeFiles/ThreadClient.dir/src/main.cpp.o"

# External object files for target ThreadClient
ThreadClient_EXTERNAL_OBJECTS =

bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/ThreadClient_autogen/mocs_compilation.cpp.o
bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/src/Thread.cpp.o
bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/src/ThreadClient.cpp.o
bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/src/main.cpp.o
bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/build.make
bin/ThreadClient: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
bin/ThreadClient: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
bin/ThreadClient: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
bin/ThreadClient: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
bin/ThreadClient: ThreadClient/CMakeFiles/ThreadClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/ThreadClient"
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThreadClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ThreadClient/CMakeFiles/ThreadClient.dir/build: bin/ThreadClient
.PHONY : ThreadClient/CMakeFiles/ThreadClient.dir/build

ThreadClient/CMakeFiles/ThreadClient.dir/clean:
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient && $(CMAKE_COMMAND) -P CMakeFiles/ThreadClient.dir/cmake_clean.cmake
.PHONY : ThreadClient/CMakeFiles/ThreadClient.dir/clean

ThreadClient/CMakeFiles/ThreadClient.dir/depend:
	cd /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient /home/maxim/Cpp/Other/my_code/network/work-tcp-sockets/network-cpp/ThreadClient/CMakeFiles/ThreadClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ThreadClient/CMakeFiles/ThreadClient.dir/depend

