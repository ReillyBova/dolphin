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
include Externals/gtest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include Externals/gtest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include Externals/gtest/CMakeFiles/gtest.dir/flags.make

Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: Externals/gtest/CMakeFiles/gtest.dir/flags.make
Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: ../Externals/gtest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest-all.cc

Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.o: Externals/gtest/CMakeFiles/gtest.dir/flags.make
Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.o: ../Externals/gtest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest_main.cc.o -c /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest_main.cc

Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest_main.cc.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest_main.cc > CMakeFiles/gtest.dir/src/gtest_main.cc.i

Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest_main.cc.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Externals/gtest/src/gtest_main.cc -o CMakeFiles/gtest.dir/src/gtest_main.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o" \
"CMakeFiles/gtest.dir/src/gtest_main.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

Externals/gtest/libgtest.a: Externals/gtest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
Externals/gtest/libgtest.a: Externals/gtest/CMakeFiles/gtest.dir/src/gtest_main.cc.o
Externals/gtest/libgtest.a: Externals/gtest/CMakeFiles/gtest.dir/build.make
Externals/gtest/libgtest.a: Externals/gtest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libgtest.a"
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Externals/gtest/CMakeFiles/gtest.dir/build: Externals/gtest/libgtest.a

.PHONY : Externals/gtest/CMakeFiles/gtest.dir/build

Externals/gtest/CMakeFiles/gtest.dir/clean:
	cd /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : Externals/gtest/CMakeFiles/gtest.dir/clean

Externals/gtest/CMakeFiles/gtest.dir/depend:
	cd /Users/rbova/GithubProjects/dolphin/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rbova/GithubProjects/dolphin /Users/rbova/GithubProjects/dolphin/Externals/gtest /Users/rbova/GithubProjects/dolphin/Build /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest /Users/rbova/GithubProjects/dolphin/Build/Externals/gtest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Externals/gtest/CMakeFiles/gtest.dir/depend

