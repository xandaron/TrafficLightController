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

# Utility rule file for ELF2UF2Build.

# Include any custom commands dependencies for this target.
include traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\compiler_depend.make

# Include the progress variables for this target.
include traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\progress.make

traffic_light_controller\CMakeFiles\ELF2UF2Build: traffic_light_controller\CMakeFiles\ELF2UF2Build-complete
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-install
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-mkdir
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-download
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-configure
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-build
traffic_light_controller\CMakeFiles\ELF2UF2Build-complete: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	D:\dev\CMake\bin\cmake.exe -E make_directory D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/CMakeFiles
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/CMakeFiles/ELF2UF2Build-complete
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-done
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\elf2uf2
	$(MAKE)
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-configure: traffic_light_controller\elf2uf2\tmp\ELF2UF2Build-cfgcmd.txt
traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-configure: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\elf2uf2
	D:\dev\CMake\bin\cmake.exe -DCMAKE_MAKE_PROGRAM:FILEPATH=nmake "-GNMake Makefiles" -S D:/dev/pico-sdk/tools/elf2uf2 -B D:/Projects/Pico/TrafficLightController/build/elf2uf2
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-download: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-source_dirinfo.txt
traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-download: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	D:\dev\CMake\bin\cmake.exe -E echo_append
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-install: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\elf2uf2
	D:\dev\CMake\bin\cmake.exe -E echo_append
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	D:\dev\CMake\bin\cmake.exe -Dcfgdir= -P D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/tmp/ELF2UF2Build-mkdirs.cmake
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch-info.txt
traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	D:\dev\CMake\bin\cmake.exe -E echo_append
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
	cd D:\Projects\Pico\TrafficLightController\build

traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update-info.txt
traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=D:\Projects\Pico\TrafficLightController\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'ELF2UF2Build'"
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	D:\dev\CMake\bin\cmake.exe -E echo_append
	D:\dev\CMake\bin\cmake.exe -E touch D:/Projects/Pico/TrafficLightController/build/traffic_light_controller/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
	cd D:\Projects\Pico\TrafficLightController\build

ELF2UF2Build: traffic_light_controller\CMakeFiles\ELF2UF2Build
ELF2UF2Build: traffic_light_controller\CMakeFiles\ELF2UF2Build-complete
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-build
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-configure
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-download
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-install
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-mkdir
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-patch
ELF2UF2Build: traffic_light_controller\elf2uf2\src\ELF2UF2Build-stamp\ELF2UF2Build-update
ELF2UF2Build: traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\build.make
.PHONY : ELF2UF2Build

# Rule to build all files generated by this target.
traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\build: ELF2UF2Build
.PHONY : traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\build

traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\clean:
	cd D:\Projects\Pico\TrafficLightController\build\traffic_light_controller
	$(CMAKE_COMMAND) -P CMakeFiles\ELF2UF2Build.dir\cmake_clean.cmake
	cd D:\Projects\Pico\TrafficLightController\build
.PHONY : traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\clean

traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Projects\Pico\TrafficLightController D:\Projects\Pico\TrafficLightController\traffic_light_controller D:\Projects\Pico\TrafficLightController\build D:\Projects\Pico\TrafficLightController\build\traffic_light_controller D:\Projects\Pico\TrafficLightController\build\traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : traffic_light_controller\CMakeFiles\ELF2UF2Build.dir\depend

