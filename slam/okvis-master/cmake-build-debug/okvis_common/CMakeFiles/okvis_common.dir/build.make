# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liamkelly/vandyhacks/slam/okvis-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug

# Include any dependencies generated for this target.
include okvis_common/CMakeFiles/okvis_common.dir/depend.make

# Include the progress variables for this target.
include okvis_common/CMakeFiles/okvis_common.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_common/CMakeFiles/okvis_common.dir/flags.make

okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o: okvis_common/CMakeFiles/okvis_common.dir/flags.make
okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o: ../okvis_common/src/VioInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioInterface.cpp

okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_common.dir/src/VioInterface.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioInterface.cpp > CMakeFiles/okvis_common.dir/src/VioInterface.cpp.i

okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_common.dir/src/VioInterface.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioInterface.cpp -o CMakeFiles/okvis_common.dir/src/VioInterface.cpp.s

okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o: okvis_common/CMakeFiles/okvis_common.dir/flags.make
okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o: ../okvis_common/src/VioParametersReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioParametersReader.cpp

okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioParametersReader.cpp > CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.i

okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/src/VioParametersReader.cpp -o CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.s

# Object files for target okvis_common
okvis_common_OBJECTS = \
"CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o" \
"CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o"

# External object files for target okvis_common
okvis_common_EXTERNAL_OBJECTS =

okvis_common/libokvis_common.a: okvis_common/CMakeFiles/okvis_common.dir/src/VioInterface.cpp.o
okvis_common/libokvis_common.a: okvis_common/CMakeFiles/okvis_common.dir/src/VioParametersReader.cpp.o
okvis_common/libokvis_common.a: okvis_common/CMakeFiles/okvis_common.dir/build.make
okvis_common/libokvis_common.a: okvis_common/CMakeFiles/okvis_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libokvis_common.a"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && $(CMAKE_COMMAND) -P CMakeFiles/okvis_common.dir/cmake_clean_target.cmake
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_common/CMakeFiles/okvis_common.dir/build: okvis_common/libokvis_common.a

.PHONY : okvis_common/CMakeFiles/okvis_common.dir/build

okvis_common/CMakeFiles/okvis_common.dir/clean:
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common && $(CMAKE_COMMAND) -P CMakeFiles/okvis_common.dir/cmake_clean.cmake
.PHONY : okvis_common/CMakeFiles/okvis_common.dir/clean

okvis_common/CMakeFiles/okvis_common.dir/depend:
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liamkelly/vandyhacks/slam/okvis-master /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_common/CMakeFiles/okvis_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_common/CMakeFiles/okvis_common.dir/depend

