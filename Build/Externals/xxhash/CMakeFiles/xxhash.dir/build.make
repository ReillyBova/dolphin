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
include Externals/xxhash/CMakeFiles/xxhash.dir/depend.make

# Include the progress variables for this target.
include Externals/xxhash/CMakeFiles/xxhash.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/xxhash/CMakeFiles/xxhash.dir/flags.make

Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.o: Externals/xxhash/CMakeFiles/xxhash.dir/flags.make
Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.o: ../Externals/xxhash/xxhash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xxhash.dir/xxhash.c.o -c /Users/rbova/GithubProjects/dolphin/Externals/xxhash/xxhash.c

Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xxhash.dir/xxhash.c.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Externals/xxhash/xxhash.c > CMakeFiles/xxhash.dir/xxhash.c.i

Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xxhash.dir/xxhash.c.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Externals/xxhash/xxhash.c -o CMakeFiles/xxhash.dir/xxhash.c.s

# Object files for target xxhash
xxhash_OBJECTS = \
"CMakeFiles/xxhash.dir/xxhash.c.o"

# External object files for target xxhash
xxhash_EXTERNAL_OBJECTS =

Externals/xxhash/libxxhash.a: Externals/xxhash/CMakeFiles/xxhash.dir/xxhash.c.o
Externals/xxhash/libxxhash.a: Externals/xxhash/CMakeFiles/xxhash.dir/build.make
Externals/xxhash/libxxhash.a: Externals/xxhash/CMakeFiles/xxhash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libxxhash.a"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && $(CMAKE_COMMAND) -P CMakeFiles/xxhash.dir/cmake_clean_target.cmake
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xxhash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/xxhash/CMakeFiles/xxhash.dir/build: Externals/xxhash/libxxhash.a

.PHONY : Externals/xxhash/CMakeFiles/xxhash.dir/build

Externals/xxhash/CMakeFiles/xxhash.dir/clean:
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash && $(CMAKE_COMMAND) -P CMakeFiles/xxhash.dir/cmake_clean.cmake
.PHONY : Externals/xxhash/CMakeFiles/xxhash.dir/clean

Externals/xxhash/CMakeFiles/xxhash.dir/depend:
	cd /Users/rbova/GithubProjects/dolphin/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rbova/GithubProjects/dolphin /Users/rbova/GithubProjects/dolphin/Externals/xxhash /Users/rbova/GithubProjects/dolphin/Build /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash /Users/rbova/GithubProjects/dolphin/Build/Externals/xxhash/CMakeFiles/xxhash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/xxhash/CMakeFiles/xxhash.dir/depend

