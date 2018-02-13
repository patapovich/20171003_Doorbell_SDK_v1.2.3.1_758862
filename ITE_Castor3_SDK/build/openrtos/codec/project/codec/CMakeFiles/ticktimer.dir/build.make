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
CMAKE_BINARY_DIR = D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec

# Utility rule file for ticktimer.

# Include the progress variables for this target.
include project/codec/CMakeFiles/ticktimer.dir/progress.make

project/codec/CMakeFiles/ticktimer: lib/sm32/ticktimer.o

lib/sm32/ticktimer.o: ../../../project/codec/ticktimer.c
	$(CMAKE_COMMAND) -E cmake_progress_report D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../../lib/sm32/ticktimer.o"
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/project/codec && C:/ITEGCC/bin/sm32-elf-gcc.exe -DCFG_CHIP_REV_A1 -DCFG_CHIP_FAMILY=9070 -DCFG_RAM_SIZE=0x4000000 -DCFG_MEMDBG_ENABLE -DCFG_WT_SIZE=0 -DCFG_LCD_WIDTH=0 -DCFG_LCD_HEIGHT=0 -DCFG_LCD_PITCH=0 -DCFG_LCD_BPP=0 -DCFG_CMDQ_SIZE=0 -DCFG_FONT_FILENAME="WenQuanYiMicroHeiMono.ttf" -DCFG_AUDIO_ENABLE -DAUDIO_PLUGIN_MESSAGE_QUEUE -DENABLE_CODECS_PLUGIN -DCONFIG_ITADRIVER -DCFG_AUDIO_SAMPLING_RATE=8000 -DCFG_AEC_DELAY_MS=60 -DCFG_SPEAKER_GAIN=0 -DCFG_MIC_GAIN=0 -DCFG_NOISE_GATE_THRESHOLD=0.3 -DCFG_EQUALIZER_SPKGAIN_SET=NULL -DCFG_EQUALIZER_MICGAIN_SET=NULL -DCFG_AUDIO_CODEC_AACDEC -DCFG_AUDIO_CODEC_AMR -DCFG_AUDIO_CODEC_EAC3DEC -DCFG_AUDIO_CODEC_MP3DEC -DCFG_AUDIO_CODEC_WAV -DCFG_AUDIO_CODEC_WMADEC -DCFG_AUDIO_CODEC_FLACDEC -DCFG_AUDIO_CODEC_SBC -DCFG_RISC_TS_DEMUX_PLUGIN -DCFG_PRIVATE_DRIVE="A" -DCFG_PUBLIC_DRIVE="B" -DCFG_TEMP_DRIVE="C" -DCFG_RTC_DEFAULT_TIMESTAMP=1325376000 -DCFG_GPIO_ETHERNET_LINK=-1 -DCFG_I2S_USE_GPIO_MODE_2=y -DCFG_NET_ETHERNET_PHY_ADDR=-1 -DCFG_NET_ETHERNET_COUNT=1 -DCFG_DBG_PRINTBUF_SIZE=0x10000 -DCFG_DBG_PRINTBUF -DCFG_UPGRADE_FILENAME="ITEPKG03.PKG" -DCFG_UPGRADE_FILENAME_LIST="" -DCFG_UPGRADE_ENC_KEY=0 -DCFG_NORMAL_BUFFER_MODE -DCFG_BUILD_RELEASE -DCFG_VERSION_MAJOR=0 -DCFG_VERSION_MINOR=1 -DCFG_VERSION_PATCH=0 -DCFG_VERSION_CUSTOM=0 -DCFG_VERSION_TWEAK= -DCFG_VERSION_MAJOR_STR="0" -DCFG_VERSION_MINOR_STR="1" -DCFG_VERSION_PATCH_STR="0" -DCFG_VERSION_CUSTOM_STR="0" -DCFG_VERSION_TWEAK_STR="" -DCFG_SYSTEM_NAME="ITE Castor3" -DCFG_MANUFACTURER="www.ite.com.tw" -DCFG_PROJECT_NAME="codec" -D__DYNAMIC_REENT__ -D__OPENRTOS__=1 -D_POSIX_BARRIERS -D_POSIX_C_SOURCE=200809L -D_POSIX_MONOTONIC_CLOCK -D_POSIX_PRIORITY_SCHEDULING=1 -D_POSIX_THREADS -D_POSIX_TIMERS -D_UNIX98_THREAD_MUTEX_ATTRIBUTES -DOSIP_MT -DORTP_BIGENDIAN -DCFG_OPENRTOS_HEAP_SIZE=0 -DCFG_MMAP_SIZE=0 -DENABLE_CODECS_PLUGIN=1 -ID:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/sdk/include -c -o D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/lib/sm32/ticktimer.o D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/project/codec/ticktimer.c

ticktimer: project/codec/CMakeFiles/ticktimer
ticktimer: lib/sm32/ticktimer.o
ticktimer: project/codec/CMakeFiles/ticktimer.dir/build.make
.PHONY : ticktimer

# Rule to build all files generated by this target.
project/codec/CMakeFiles/ticktimer.dir/build: ticktimer
.PHONY : project/codec/CMakeFiles/ticktimer.dir/build

project/codec/CMakeFiles/ticktimer.dir/clean:
	cd D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/project/codec && $(CMAKE_COMMAND) -P CMakeFiles/ticktimer.dir/cmake_clean.cmake
.PHONY : project/codec/CMakeFiles/ticktimer.dir/clean

project/codec/CMakeFiles/ticktimer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/project/codec D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/project/codec D:/Project/Doorbell/20171003_Doorbell_SDK_v1.2.3.1_758862/ITE_Castor3_SDK/build/openrtos/codec/project/codec/CMakeFiles/ticktimer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : project/codec/CMakeFiles/ticktimer.dir/depend
