# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/r/Рабочий стол/test_task"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/r/Рабочий стол/test_task/build"

# Include any dependencies generated for this target.
include libs/CMakeFiles/UDP_server.dir/depend.make

# Include the progress variables for this target.
include libs/CMakeFiles/UDP_server.dir/progress.make

# Include the compile flags for this target's objects.
include libs/CMakeFiles/UDP_server.dir/flags.make

libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.o: libs/CMakeFiles/UDP_server.dir/flags.make
libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.o: ../libs/UDP_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/r/Рабочий стол/test_task/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.o"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UDP_server.dir/UDP_server.cpp.o -c "/home/r/Рабочий стол/test_task/libs/UDP_server.cpp"

libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UDP_server.dir/UDP_server.cpp.i"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/r/Рабочий стол/test_task/libs/UDP_server.cpp" > CMakeFiles/UDP_server.dir/UDP_server.cpp.i

libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UDP_server.dir/UDP_server.cpp.s"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/r/Рабочий стол/test_task/libs/UDP_server.cpp" -o CMakeFiles/UDP_server.dir/UDP_server.cpp.s

libs/CMakeFiles/UDP_server.dir/process.cpp.o: libs/CMakeFiles/UDP_server.dir/flags.make
libs/CMakeFiles/UDP_server.dir/process.cpp.o: ../libs/process.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/r/Рабочий стол/test_task/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libs/CMakeFiles/UDP_server.dir/process.cpp.o"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/UDP_server.dir/process.cpp.o -c "/home/r/Рабочий стол/test_task/libs/process.cpp"

libs/CMakeFiles/UDP_server.dir/process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UDP_server.dir/process.cpp.i"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/r/Рабочий стол/test_task/libs/process.cpp" > CMakeFiles/UDP_server.dir/process.cpp.i

libs/CMakeFiles/UDP_server.dir/process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UDP_server.dir/process.cpp.s"
	cd "/home/r/Рабочий стол/test_task/build/libs" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/r/Рабочий стол/test_task/libs/process.cpp" -o CMakeFiles/UDP_server.dir/process.cpp.s

# Object files for target UDP_server
UDP_server_OBJECTS = \
"CMakeFiles/UDP_server.dir/UDP_server.cpp.o" \
"CMakeFiles/UDP_server.dir/process.cpp.o"

# External object files for target UDP_server
UDP_server_EXTERNAL_OBJECTS =

libs/libUDP_server.a: libs/CMakeFiles/UDP_server.dir/UDP_server.cpp.o
libs/libUDP_server.a: libs/CMakeFiles/UDP_server.dir/process.cpp.o
libs/libUDP_server.a: libs/CMakeFiles/UDP_server.dir/build.make
libs/libUDP_server.a: libs/CMakeFiles/UDP_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/r/Рабочий стол/test_task/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libUDP_server.a"
	cd "/home/r/Рабочий стол/test_task/build/libs" && $(CMAKE_COMMAND) -P CMakeFiles/UDP_server.dir/cmake_clean_target.cmake
	cd "/home/r/Рабочий стол/test_task/build/libs" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UDP_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libs/CMakeFiles/UDP_server.dir/build: libs/libUDP_server.a

.PHONY : libs/CMakeFiles/UDP_server.dir/build

libs/CMakeFiles/UDP_server.dir/clean:
	cd "/home/r/Рабочий стол/test_task/build/libs" && $(CMAKE_COMMAND) -P CMakeFiles/UDP_server.dir/cmake_clean.cmake
.PHONY : libs/CMakeFiles/UDP_server.dir/clean

libs/CMakeFiles/UDP_server.dir/depend:
	cd "/home/r/Рабочий стол/test_task/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/r/Рабочий стол/test_task" "/home/r/Рабочий стол/test_task/libs" "/home/r/Рабочий стол/test_task/build" "/home/r/Рабочий стол/test_task/build/libs" "/home/r/Рабочий стол/test_task/build/libs/CMakeFiles/UDP_server.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : libs/CMakeFiles/UDP_server.dir/depend
