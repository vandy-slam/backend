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
include okvis_frontend/CMakeFiles/okvis_frontend.dir/depend.make

# Include the progress variables for this target.
include okvis_frontend/CMakeFiles/okvis_frontend.dir/progress.make

# Include the compile flags for this target's objects.
include okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o: ../okvis_frontend/src/Frontend.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/Frontend.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/Frontend.cpp > CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/Frontend.cpp -o CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.s

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o: ../okvis_frontend/src/VioKeyframeWindowMatchingAlgorithm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/VioKeyframeWindowMatchingAlgorithm.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/VioKeyframeWindowMatchingAlgorithm.cpp > CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/VioKeyframeWindowMatchingAlgorithm.cpp -o CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.s

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o: ../okvis_frontend/src/stereo_triangulation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/stereo_triangulation.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/stereo_triangulation.cpp > CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/stereo_triangulation.cpp -o CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.s

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o: ../okvis_frontend/src/ProbabilisticStereoTriangulator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/ProbabilisticStereoTriangulator.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/ProbabilisticStereoTriangulator.cpp > CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/ProbabilisticStereoTriangulator.cpp -o CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.s

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o: ../okvis_frontend/src/FrameNoncentralAbsoluteAdapter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameNoncentralAbsoluteAdapter.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameNoncentralAbsoluteAdapter.cpp > CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameNoncentralAbsoluteAdapter.cpp -o CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.s

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o: okvis_frontend/CMakeFiles/okvis_frontend.dir/flags.make
okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o: ../okvis_frontend/src/FrameRelativeAdapter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o -c /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameRelativeAdapter.cpp

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.i"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameRelativeAdapter.cpp > CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.i

okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.s"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/src/FrameRelativeAdapter.cpp -o CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.s

# Object files for target okvis_frontend
okvis_frontend_OBJECTS = \
"CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o" \
"CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o" \
"CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o" \
"CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o" \
"CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o" \
"CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o"

# External object files for target okvis_frontend
okvis_frontend_EXTERNAL_OBJECTS =

okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/Frontend.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/VioKeyframeWindowMatchingAlgorithm.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/stereo_triangulation.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/ProbabilisticStereoTriangulator.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameNoncentralAbsoluteAdapter.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/src/FrameRelativeAdapter.cpp.o
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/build.make
okvis_frontend/libokvis_frontend.a: okvis_frontend/CMakeFiles/okvis_frontend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libokvis_frontend.a"
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && $(CMAKE_COMMAND) -P CMakeFiles/okvis_frontend.dir/cmake_clean_target.cmake
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/okvis_frontend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
okvis_frontend/CMakeFiles/okvis_frontend.dir/build: okvis_frontend/libokvis_frontend.a

.PHONY : okvis_frontend/CMakeFiles/okvis_frontend.dir/build

okvis_frontend/CMakeFiles/okvis_frontend.dir/clean:
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend && $(CMAKE_COMMAND) -P CMakeFiles/okvis_frontend.dir/cmake_clean.cmake
.PHONY : okvis_frontend/CMakeFiles/okvis_frontend.dir/clean

okvis_frontend/CMakeFiles/okvis_frontend.dir/depend:
	cd /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liamkelly/vandyhacks/slam/okvis-master /Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend /Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/okvis_frontend/CMakeFiles/okvis_frontend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : okvis_frontend/CMakeFiles/okvis_frontend.dir/depend
