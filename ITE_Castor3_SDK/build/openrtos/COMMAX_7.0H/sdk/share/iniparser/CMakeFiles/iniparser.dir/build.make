# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/tool/bin/cmake.exe

# The command to remove a file.
RM = D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/tool/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H

# Include any dependencies generated for this target.
include sdk/share/iniparser/CMakeFiles/iniparser.dir/depend.make

# Include the progress variables for this target.
include sdk/share/iniparser/CMakeFiles/iniparser.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/share/iniparser/CMakeFiles/iniparser.dir/flags.make

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj: sdk/share/iniparser/CMakeFiles/iniparser.dir/flags.make
sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj: ../../../sdk/share/iniparser/dictionary.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/iniparser.dir/dictionary.c.obj   -c D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/dictionary.c

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iniparser.dir/dictionary.c.i"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/dictionary.c > CMakeFiles/iniparser.dir/dictionary.c.i

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iniparser.dir/dictionary.c.s"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/dictionary.c -o CMakeFiles/iniparser.dir/dictionary.c.s

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.requires:
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.requires

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.provides: sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.requires
	$(MAKE) -f sdk/share/iniparser/CMakeFiles/iniparser.dir/build.make sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.provides.build
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.provides

sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.provides.build: sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj: sdk/share/iniparser/CMakeFiles/iniparser.dir/flags.make
sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj: ../../../sdk/share/iniparser/iniparser.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/iniparser.dir/iniparser.c.obj   -c D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/iniparser.c

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/iniparser.dir/iniparser.c.i"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/iniparser.c > CMakeFiles/iniparser.dir/iniparser.c.i

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/iniparser.dir/iniparser.c.s"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && C:/ITEGCC/bin/arm-none-eabi-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser/iniparser.c -o CMakeFiles/iniparser.dir/iniparser.c.s

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.requires:
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.requires

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.provides: sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.requires
	$(MAKE) -f sdk/share/iniparser/CMakeFiles/iniparser.dir/build.make sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.provides.build
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.provides

sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.provides.build: sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj

# Object files for target iniparser
iniparser_OBJECTS = \
"CMakeFiles/iniparser.dir/dictionary.c.obj" \
"CMakeFiles/iniparser.dir/iniparser.c.obj"

# External object files for target iniparser
iniparser_EXTERNAL_OBJECTS =

lib/fa626/libiniparser.a: sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj
lib/fa626/libiniparser.a: sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj
lib/fa626/libiniparser.a: sdk/share/iniparser/CMakeFiles/iniparser.dir/build.make
lib/fa626/libiniparser.a: sdk/share/iniparser/CMakeFiles/iniparser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../lib/fa626/libiniparser.a"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && $(CMAKE_COMMAND) -P CMakeFiles/iniparser.dir/cmake_clean_target.cmake
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iniparser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdk/share/iniparser/CMakeFiles/iniparser.dir/build: lib/fa626/libiniparser.a
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/build

sdk/share/iniparser/CMakeFiles/iniparser.dir/requires: sdk/share/iniparser/CMakeFiles/iniparser.dir/dictionary.c.obj.requires
sdk/share/iniparser/CMakeFiles/iniparser.dir/requires: sdk/share/iniparser/CMakeFiles/iniparser.dir/iniparser.c.obj.requires
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/requires

sdk/share/iniparser/CMakeFiles/iniparser.dir/clean:
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser && $(CMAKE_COMMAND) -P CMakeFiles/iniparser.dir/cmake_clean.cmake
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/clean

sdk/share/iniparser/CMakeFiles/iniparser.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/share/iniparser D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/COMMAX_7.0H/sdk/share/iniparser/CMakeFiles/iniparser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/share/iniparser/CMakeFiles/iniparser.dir/depend
