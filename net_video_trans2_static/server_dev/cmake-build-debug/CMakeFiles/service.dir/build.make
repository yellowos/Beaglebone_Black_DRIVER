# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yellowos/Desktop/net_video_trans_dev/server_dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/service.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/service.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/service.dir/flags.make

CMakeFiles/service.dir/main.cpp.o: CMakeFiles/service.dir/flags.make
CMakeFiles/service.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/service.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service.dir/main.cpp.o -c /Users/yellowos/Desktop/net_video_trans_dev/server_dev/main.cpp

CMakeFiles/service.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yellowos/Desktop/net_video_trans_dev/server_dev/main.cpp > CMakeFiles/service.dir/main.cpp.i

CMakeFiles/service.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yellowos/Desktop/net_video_trans_dev/server_dev/main.cpp -o CMakeFiles/service.dir/main.cpp.s

CMakeFiles/service.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/service.dir/main.cpp.o.requires

CMakeFiles/service.dir/main.cpp.o.provides: CMakeFiles/service.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/service.dir/build.make CMakeFiles/service.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/service.dir/main.cpp.o.provides

CMakeFiles/service.dir/main.cpp.o.provides.build: CMakeFiles/service.dir/main.cpp.o


CMakeFiles/service.dir/get_image.cpp.o: CMakeFiles/service.dir/flags.make
CMakeFiles/service.dir/get_image.cpp.o: ../get_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/service.dir/get_image.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service.dir/get_image.cpp.o -c /Users/yellowos/Desktop/net_video_trans_dev/server_dev/get_image.cpp

CMakeFiles/service.dir/get_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service.dir/get_image.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yellowos/Desktop/net_video_trans_dev/server_dev/get_image.cpp > CMakeFiles/service.dir/get_image.cpp.i

CMakeFiles/service.dir/get_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service.dir/get_image.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yellowos/Desktop/net_video_trans_dev/server_dev/get_image.cpp -o CMakeFiles/service.dir/get_image.cpp.s

CMakeFiles/service.dir/get_image.cpp.o.requires:

.PHONY : CMakeFiles/service.dir/get_image.cpp.o.requires

CMakeFiles/service.dir/get_image.cpp.o.provides: CMakeFiles/service.dir/get_image.cpp.o.requires
	$(MAKE) -f CMakeFiles/service.dir/build.make CMakeFiles/service.dir/get_image.cpp.o.provides.build
.PHONY : CMakeFiles/service.dir/get_image.cpp.o.provides

CMakeFiles/service.dir/get_image.cpp.o.provides.build: CMakeFiles/service.dir/get_image.cpp.o


# Object files for target service
service_OBJECTS = \
"CMakeFiles/service.dir/main.cpp.o" \
"CMakeFiles/service.dir/get_image.cpp.o"

# External object files for target service
service_EXTERNAL_OBJECTS =

service: CMakeFiles/service.dir/main.cpp.o
service: CMakeFiles/service.dir/get_image.cpp.o
service: CMakeFiles/service.dir/build.make
service: /usr/local/lib/libopencv_videostab.3.3.0.dylib
service: /usr/local/lib/libopencv_video.3.3.0.dylib
service: /usr/local/lib/libopencv_photo.3.3.0.dylib
service: /usr/local/lib/libopencv_calib3d.3.3.0.dylib
service: /usr/local/lib/libopencv_features2d.3.3.0.dylib
service: /usr/local/lib/libopencv_highgui.3.3.0.dylib
service: /usr/local/lib/libopencv_videoio.3.3.0.dylib
service: /usr/local/lib/libopencv_imgcodecs.3.3.0.dylib
service: /usr/local/lib/libopencv_imgproc.3.3.0.dylib
service: /usr/local/lib/libopencv_flann.3.3.0.dylib
service: /usr/local/lib/libopencv_core.3.3.0.dylib
service: CMakeFiles/service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable service"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/service.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/service.dir/build: service

.PHONY : CMakeFiles/service.dir/build

CMakeFiles/service.dir/requires: CMakeFiles/service.dir/main.cpp.o.requires
CMakeFiles/service.dir/requires: CMakeFiles/service.dir/get_image.cpp.o.requires

.PHONY : CMakeFiles/service.dir/requires

CMakeFiles/service.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/service.dir/cmake_clean.cmake
.PHONY : CMakeFiles/service.dir/clean

CMakeFiles/service.dir/depend:
	cd /Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yellowos/Desktop/net_video_trans_dev/server_dev /Users/yellowos/Desktop/net_video_trans_dev/server_dev /Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug /Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug /Users/yellowos/Desktop/net_video_trans_dev/server_dev/cmake-build-debug/CMakeFiles/service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/service.dir/depend

