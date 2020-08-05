# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rbova/GithubProjects/dolphin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rbova/GithubProjects/dolphin/Build

# Include any dependencies generated for this target.
include Externals/LZO/CMakeFiles/lzo2.dir/depend.make

# Include the progress variables for this target.
include Externals/LZO/CMakeFiles/lzo2.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/LZO/CMakeFiles/lzo2.dir/flags.make

Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.o: Externals/LZO/CMakeFiles/lzo2.dir/flags.make
Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.o: ../Externals/LZO/minilzo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lzo2.dir/minilzo.c.o -c /Users/rbova/GithubProjects/dolphin/Externals/LZO/minilzo.c

Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lzo2.dir/minilzo.c.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Externals/LZO/minilzo.c > CMakeFiles/lzo2.dir/minilzo.c.i

Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lzo2.dir/minilzo.c.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Externals/LZO/minilzo.c -o CMakeFiles/lzo2.dir/minilzo.c.s

# Object files for target lzo2
lzo2_OBJECTS = \
"CMakeFiles/lzo2.dir/minilzo.c.o"

# External object files for target lzo2
lzo2_EXTERNAL_OBJECTS =

Externals/LZO/liblzo2.a: Externals/LZO/CMakeFiles/lzo2.dir/minilzo.c.o
Externals/LZO/liblzo2.a: Externals/LZO/CMakeFiles/lzo2.dir/build.make
Externals/LZO/liblzo2.a: Externals/LZO/CMakeFiles/lzo2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblzo2.a"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && $(CMAKE_COMMAND) -P CMakeFiles/lzo2.dir/cmake_clean_target.cmake
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lzo2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/LZO/CMakeFiles/lzo2.dir/build: Externals/LZO/liblzo2.a

.PHONY : Externals/LZO/CMakeFiles/lzo2.dir/build

Externals/LZO/CMakeFiles/lzo2.dir/clean:
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO && $(CMAKE_COMMAND) -P CMakeFiles/lzo2.dir/cmake_clean.cmake
.PHONY : Externals/LZO/CMakeFiles/lzo2.dir/clean

Externals/LZO/CMakeFiles/lzo2.dir/depend:
	cd /Users/rbova/GithubProjects/dolphin/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rbova/GithubProjects/dolphin /Users/rbova/GithubProjects/dolphin/Externals/LZO /Users/rbova/GithubProjects/dolphin/Build /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO /Users/rbova/GithubProjects/dolphin/Build/Externals/LZO/CMakeFiles/lzo2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/LZO/CMakeFiles/lzo2.dir/depend
