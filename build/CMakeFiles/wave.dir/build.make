# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /cm/shared/apps/cmake/gcc/64/3.5.1/bin/cmake

# The command to remove a file.
RM = /cm/shared/apps/cmake/gcc/64/3.5.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/students/gurpalsingh/wave_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/students/gurpalsingh/wave_cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/wave.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wave.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wave.dir/flags.make

CMakeFiles/wave.dir/src/main.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/wave.dir/src/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/main.c.o   -c /home/students/gurpalsingh/wave_cmake/src/main.c

CMakeFiles/wave.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/main.c > CMakeFiles/wave.dir/src/main.c.i

CMakeFiles/wave.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/main.c -o CMakeFiles/wave.dir/src/main.c.s

CMakeFiles/wave.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/main.c.o.requires

CMakeFiles/wave.dir/src/main.c.o.provides: CMakeFiles/wave.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/main.c.o.provides

CMakeFiles/wave.dir/src/main.c.o.provides.build: CMakeFiles/wave.dir/src/main.c.o


CMakeFiles/wave.dir/src/solveWave.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/solveWave.c.o: ../src/solveWave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/wave.dir/src/solveWave.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/solveWave.c.o   -c /home/students/gurpalsingh/wave_cmake/src/solveWave.c

CMakeFiles/wave.dir/src/solveWave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/solveWave.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/solveWave.c > CMakeFiles/wave.dir/src/solveWave.c.i

CMakeFiles/wave.dir/src/solveWave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/solveWave.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/solveWave.c -o CMakeFiles/wave.dir/src/solveWave.c.s

CMakeFiles/wave.dir/src/solveWave.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/solveWave.c.o.requires

CMakeFiles/wave.dir/src/solveWave.c.o.provides: CMakeFiles/wave.dir/src/solveWave.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/solveWave.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/solveWave.c.o.provides

CMakeFiles/wave.dir/src/solveWave.c.o.provides.build: CMakeFiles/wave.dir/src/solveWave.c.o


CMakeFiles/wave.dir/src/io.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/io.c.o: ../src/io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/wave.dir/src/io.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/io.c.o   -c /home/students/gurpalsingh/wave_cmake/src/io.c

CMakeFiles/wave.dir/src/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/io.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/io.c > CMakeFiles/wave.dir/src/io.c.i

CMakeFiles/wave.dir/src/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/io.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/io.c -o CMakeFiles/wave.dir/src/io.c.s

CMakeFiles/wave.dir/src/io.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/io.c.o.requires

CMakeFiles/wave.dir/src/io.c.o.provides: CMakeFiles/wave.dir/src/io.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/io.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/io.c.o.provides

CMakeFiles/wave.dir/src/io.c.o.provides.build: CMakeFiles/wave.dir/src/io.c.o


CMakeFiles/wave.dir/src/createMesh.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/createMesh.c.o: ../src/createMesh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/wave.dir/src/createMesh.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/createMesh.c.o   -c /home/students/gurpalsingh/wave_cmake/src/createMesh.c

CMakeFiles/wave.dir/src/createMesh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/createMesh.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/createMesh.c > CMakeFiles/wave.dir/src/createMesh.c.i

CMakeFiles/wave.dir/src/createMesh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/createMesh.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/createMesh.c -o CMakeFiles/wave.dir/src/createMesh.c.s

CMakeFiles/wave.dir/src/createMesh.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/createMesh.c.o.requires

CMakeFiles/wave.dir/src/createMesh.c.o.provides: CMakeFiles/wave.dir/src/createMesh.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/createMesh.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/createMesh.c.o.provides

CMakeFiles/wave.dir/src/createMesh.c.o.provides.build: CMakeFiles/wave.dir/src/createMesh.c.o


CMakeFiles/wave.dir/src/initialize.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/initialize.c.o: ../src/initialize.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/wave.dir/src/initialize.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/initialize.c.o   -c /home/students/gurpalsingh/wave_cmake/src/initialize.c

CMakeFiles/wave.dir/src/initialize.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/initialize.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/initialize.c > CMakeFiles/wave.dir/src/initialize.c.i

CMakeFiles/wave.dir/src/initialize.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/initialize.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/initialize.c -o CMakeFiles/wave.dir/src/initialize.c.s

CMakeFiles/wave.dir/src/initialize.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/initialize.c.o.requires

CMakeFiles/wave.dir/src/initialize.c.o.provides: CMakeFiles/wave.dir/src/initialize.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/initialize.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/initialize.c.o.provides

CMakeFiles/wave.dir/src/initialize.c.o.provides.build: CMakeFiles/wave.dir/src/initialize.c.o


CMakeFiles/wave.dir/src/validate.c.o: CMakeFiles/wave.dir/flags.make
CMakeFiles/wave.dir/src/validate.c.o: ../src/validate.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/wave.dir/src/validate.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/src/validate.c.o   -c /home/students/gurpalsingh/wave_cmake/src/validate.c

CMakeFiles/wave.dir/src/validate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/src/validate.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/students/gurpalsingh/wave_cmake/src/validate.c > CMakeFiles/wave.dir/src/validate.c.i

CMakeFiles/wave.dir/src/validate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/src/validate.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/students/gurpalsingh/wave_cmake/src/validate.c -o CMakeFiles/wave.dir/src/validate.c.s

CMakeFiles/wave.dir/src/validate.c.o.requires:

.PHONY : CMakeFiles/wave.dir/src/validate.c.o.requires

CMakeFiles/wave.dir/src/validate.c.o.provides: CMakeFiles/wave.dir/src/validate.c.o.requires
	$(MAKE) -f CMakeFiles/wave.dir/build.make CMakeFiles/wave.dir/src/validate.c.o.provides.build
.PHONY : CMakeFiles/wave.dir/src/validate.c.o.provides

CMakeFiles/wave.dir/src/validate.c.o.provides.build: CMakeFiles/wave.dir/src/validate.c.o


# Object files for target wave
wave_OBJECTS = \
"CMakeFiles/wave.dir/src/main.c.o" \
"CMakeFiles/wave.dir/src/solveWave.c.o" \
"CMakeFiles/wave.dir/src/io.c.o" \
"CMakeFiles/wave.dir/src/createMesh.c.o" \
"CMakeFiles/wave.dir/src/initialize.c.o" \
"CMakeFiles/wave.dir/src/validate.c.o"

# External object files for target wave
wave_EXTERNAL_OBJECTS =

../bin/wave: CMakeFiles/wave.dir/src/main.c.o
../bin/wave: CMakeFiles/wave.dir/src/solveWave.c.o
../bin/wave: CMakeFiles/wave.dir/src/io.c.o
../bin/wave: CMakeFiles/wave.dir/src/createMesh.c.o
../bin/wave: CMakeFiles/wave.dir/src/initialize.c.o
../bin/wave: CMakeFiles/wave.dir/src/validate.c.o
../bin/wave: CMakeFiles/wave.dir/build.make
../bin/wave: CMakeFiles/wave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/gurpalsingh/wave_cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable ../bin/wave"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wave.dir/build: ../bin/wave

.PHONY : CMakeFiles/wave.dir/build

CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/main.c.o.requires
CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/solveWave.c.o.requires
CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/io.c.o.requires
CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/createMesh.c.o.requires
CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/initialize.c.o.requires
CMakeFiles/wave.dir/requires: CMakeFiles/wave.dir/src/validate.c.o.requires

.PHONY : CMakeFiles/wave.dir/requires

CMakeFiles/wave.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wave.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wave.dir/clean

CMakeFiles/wave.dir/depend:
	cd /home/students/gurpalsingh/wave_cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/gurpalsingh/wave_cmake /home/students/gurpalsingh/wave_cmake /home/students/gurpalsingh/wave_cmake/build /home/students/gurpalsingh/wave_cmake/build /home/students/gurpalsingh/wave_cmake/build/CMakeFiles/wave.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wave.dir/depend

