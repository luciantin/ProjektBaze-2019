# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/tin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.4932.12/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/tin/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.4932.12/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tin/CLionProjects/Testing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tin/CLionProjects/Testing/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PROJECT_NAME.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PROJECT_NAME.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PROJECT_NAME.dir/flags.make

CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o: CMakeFiles/PROJECT_NAME.dir/flags.make
CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o: PROJECT_NAME_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tin/CLionProjects/Testing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o -c /home/tin/CLionProjects/Testing/cmake-build-debug/PROJECT_NAME_autogen/mocs_compilation.cpp

CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tin/CLionProjects/Testing/cmake-build-debug/PROJECT_NAME_autogen/mocs_compilation.cpp > CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.i

CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tin/CLionProjects/Testing/cmake-build-debug/PROJECT_NAME_autogen/mocs_compilation.cpp -o CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.s

# Object files for target PROJECT_NAME
PROJECT_NAME_OBJECTS = \
"CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o"

# External object files for target PROJECT_NAME
PROJECT_NAME_EXTERNAL_OBJECTS =

PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/PROJECT_NAME_autogen/mocs_compilation.cpp.o
PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/build.make
PROJECT_NAME: /usr/lib/libQt5Widgets.so.5.13.1
PROJECT_NAME: /usr/lib/libQt5Quick.so.5.13.1
PROJECT_NAME: /usr/lib/libQt5Gui.so.5.13.1
PROJECT_NAME: /usr/lib/libQt5Qml.so.5.13.1
PROJECT_NAME: /usr/lib/libQt5Network.so.5.13.1
PROJECT_NAME: /usr/lib/libQt5Core.so.5.13.1
PROJECT_NAME: CMakeFiles/PROJECT_NAME.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tin/CLionProjects/Testing/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PROJECT_NAME"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PROJECT_NAME.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PROJECT_NAME.dir/build: PROJECT_NAME

.PHONY : CMakeFiles/PROJECT_NAME.dir/build

CMakeFiles/PROJECT_NAME.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PROJECT_NAME.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PROJECT_NAME.dir/clean

CMakeFiles/PROJECT_NAME.dir/depend:
	cd /home/tin/CLionProjects/Testing/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tin/CLionProjects/Testing /home/tin/CLionProjects/Testing /home/tin/CLionProjects/Testing/cmake-build-debug /home/tin/CLionProjects/Testing/cmake-build-debug /home/tin/CLionProjects/Testing/cmake-build-debug/CMakeFiles/PROJECT_NAME.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PROJECT_NAME.dir/depend

