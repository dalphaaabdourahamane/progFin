# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.7

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2017.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2017.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\DIALLO\ClionProjects\pricing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pricing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pricing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pricing.dir/flags.make

CMakeFiles/pricing.dir/main.cpp.obj: CMakeFiles/pricing.dir/flags.make
CMakeFiles/pricing.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pricing.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\pricing.dir\main.cpp.obj -c C:\Users\DIALLO\ClionProjects\pricing\main.cpp

CMakeFiles/pricing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pricing.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\DIALLO\ClionProjects\pricing\main.cpp > CMakeFiles\pricing.dir\main.cpp.i

CMakeFiles/pricing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pricing.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\DIALLO\ClionProjects\pricing\main.cpp -o CMakeFiles\pricing.dir\main.cpp.s

CMakeFiles/pricing.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/pricing.dir/main.cpp.obj.requires

CMakeFiles/pricing.dir/main.cpp.obj.provides: CMakeFiles/pricing.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\pricing.dir\build.make CMakeFiles/pricing.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/pricing.dir/main.cpp.obj.provides

CMakeFiles/pricing.dir/main.cpp.obj.provides.build: CMakeFiles/pricing.dir/main.cpp.obj


# Object files for target pricing
pricing_OBJECTS = \
"CMakeFiles/pricing.dir/main.cpp.obj"

# External object files for target pricing
pricing_EXTERNAL_OBJECTS =

pricing.exe: CMakeFiles/pricing.dir/main.cpp.obj
pricing.exe: CMakeFiles/pricing.dir/build.make
pricing.exe: CMakeFiles/pricing.dir/linklibs.rsp
pricing.exe: CMakeFiles/pricing.dir/objects1.rsp
pricing.exe: CMakeFiles/pricing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pricing.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pricing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pricing.dir/build: pricing.exe

.PHONY : CMakeFiles/pricing.dir/build

CMakeFiles/pricing.dir/requires: CMakeFiles/pricing.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/pricing.dir/requires

CMakeFiles/pricing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pricing.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pricing.dir/clean

CMakeFiles/pricing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\DIALLO\ClionProjects\pricing C:\Users\DIALLO\ClionProjects\pricing C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug C:\Users\DIALLO\ClionProjects\pricing\cmake-build-debug\CMakeFiles\pricing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pricing.dir/depend

