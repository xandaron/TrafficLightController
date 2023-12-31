﻿# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\dev\CMake\bin\cmake.exe

# The command to remove a file.
RM = D:\dev\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Projects\Pico\TrafficLightController

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Projects\Pico\TrafficLightController\build

# Utility rule file for ir_receiver_library_ir_receiver_pio_h.

# Include any custom commands dependencies for this target.
include ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\compiler_depend.make

# Include the progress variables for this target.
include ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\progress.make

ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h: ir_receiver_library\ir_receiver.pio.h
	cd D:\Projects\Pico\TrafficLightController\build\ir_receiver_library
	cd D:\Projects\Pico\TrafficLightController\build

ir_receiver_library\ir_receiver.pio.h: D:\Projects\Pico\TrafficLightController\ir_receiver_library\ir_receiver.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ir_receiver.pio.h"
	cd D:\Projects\Pico\TrafficLightController\build\ir_receiver_library
	..\pioasm\pioasm.exe -o c-sdk D:/Projects/Pico/TrafficLightController/ir_receiver_library/ir_receiver.pio D:/Projects/Pico/TrafficLightController/build/ir_receiver_library/ir_receiver.pio.h
	cd D:\Projects\Pico\TrafficLightController\build

ir_receiver_library_ir_receiver_pio_h: ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h
ir_receiver_library_ir_receiver_pio_h: ir_receiver_library\ir_receiver.pio.h
ir_receiver_library_ir_receiver_pio_h: ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\build.make
.PHONY : ir_receiver_library_ir_receiver_pio_h

# Rule to build all files generated by this target.
ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\build: ir_receiver_library_ir_receiver_pio_h
.PHONY : ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\build

ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\clean:
	cd D:\Projects\Pico\TrafficLightController\build\ir_receiver_library
	$(CMAKE_COMMAND) -P CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\cmake_clean.cmake
	cd D:\Projects\Pico\TrafficLightController\build
.PHONY : ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\clean

ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Projects\Pico\TrafficLightController D:\Projects\Pico\TrafficLightController\ir_receiver_library D:\Projects\Pico\TrafficLightController\build D:\Projects\Pico\TrafficLightController\build\ir_receiver_library D:\Projects\Pico\TrafficLightController\build\ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : ir_receiver_library\CMakeFiles\ir_receiver_library_ir_receiver_pio_h.dir\depend

