# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /snap/clion/184/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/184/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maxim/Cpp/network/work-tcp-sockets/network-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug

# Include any dependencies generated for this target.
include FortuneClient/CMakeFiles/FortuneClient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include FortuneClient/CMakeFiles/FortuneClient.dir/compiler_depend.make

# Include the progress variables for this target.
include FortuneClient/CMakeFiles/FortuneClient.dir/progress.make

# Include the compile flags for this target's objects.
include FortuneClient/CMakeFiles/FortuneClient.dir/flags.make

FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/flags.make
FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o: FortuneClient/FortuneClient_autogen/mocs_compilation.cpp
FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o -MF CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o -c /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient/FortuneClient_autogen/mocs_compilation.cpp

FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.i"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient/FortuneClient_autogen/mocs_compilation.cpp > CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.i

FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.s"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient/FortuneClient_autogen/mocs_compilation.cpp -o CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.s

FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/flags.make
FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o: ../FortuneClient/Client.cpp
FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o -MF CMakeFiles/FortuneClient.dir/Client.cpp.o.d -o CMakeFiles/FortuneClient.dir/Client.cpp.o -c /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/Client.cpp

FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FortuneClient.dir/Client.cpp.i"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/Client.cpp > CMakeFiles/FortuneClient.dir/Client.cpp.i

FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FortuneClient.dir/Client.cpp.s"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/Client.cpp -o CMakeFiles/FortuneClient.dir/Client.cpp.s

FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/flags.make
FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o: ../FortuneClient/main.cpp
FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o: FortuneClient/CMakeFiles/FortuneClient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o -MF CMakeFiles/FortuneClient.dir/main.cpp.o.d -o CMakeFiles/FortuneClient.dir/main.cpp.o -c /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/main.cpp

FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FortuneClient.dir/main.cpp.i"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/main.cpp > CMakeFiles/FortuneClient.dir/main.cpp.i

FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FortuneClient.dir/main.cpp.s"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient/main.cpp -o CMakeFiles/FortuneClient.dir/main.cpp.s

# Object files for target FortuneClient
FortuneClient_OBJECTS = \
"CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/FortuneClient.dir/Client.cpp.o" \
"CMakeFiles/FortuneClient.dir/main.cpp.o"

# External object files for target FortuneClient
FortuneClient_EXTERNAL_OBJECTS =

bin/FortuneClient: FortuneClient/CMakeFiles/FortuneClient.dir/FortuneClient_autogen/mocs_compilation.cpp.o
bin/FortuneClient: FortuneClient/CMakeFiles/FortuneClient.dir/Client.cpp.o
bin/FortuneClient: FortuneClient/CMakeFiles/FortuneClient.dir/main.cpp.o
bin/FortuneClient: FortuneClient/CMakeFiles/FortuneClient.dir/build.make
bin/FortuneClient: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
bin/FortuneClient: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.12.8
bin/FortuneClient: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
bin/FortuneClient: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
bin/FortuneClient: FortuneClient/CMakeFiles/FortuneClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/FortuneClient"
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FortuneClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
FortuneClient/CMakeFiles/FortuneClient.dir/build: bin/FortuneClient
.PHONY : FortuneClient/CMakeFiles/FortuneClient.dir/build

FortuneClient/CMakeFiles/FortuneClient.dir/clean:
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient && $(CMAKE_COMMAND) -P CMakeFiles/FortuneClient.dir/cmake_clean.cmake
.PHONY : FortuneClient/CMakeFiles/FortuneClient.dir/clean

FortuneClient/CMakeFiles/FortuneClient.dir/depend:
	cd /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maxim/Cpp/network/work-tcp-sockets/network-cpp /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/FortuneClient /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient /home/maxim/Cpp/network/work-tcp-sockets/network-cpp/cmake-build-debug/FortuneClient/CMakeFiles/FortuneClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : FortuneClient/CMakeFiles/FortuneClient.dir/depend
