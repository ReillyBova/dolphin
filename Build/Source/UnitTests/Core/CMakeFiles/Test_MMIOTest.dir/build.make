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
include Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/depend.make

# Include the progress variables for this target.
include Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/progress.make

# Include the compile flags for this target's objects.
include Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/flags.make

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/flags.make
Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o: ../Source/UnitTests/Core/MMIOTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o -c /Users/rbova/GithubProjects/dolphin/Source/UnitTests/Core/MMIOTest.cpp

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Source/UnitTests/Core/MMIOTest.cpp > CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.i

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Source/UnitTests/Core/MMIOTest.cpp -o CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.s

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/flags.make
Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o: ../Source/UnitTests/TestUtils/StubHost.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o -c /Users/rbova/GithubProjects/dolphin/Source/UnitTests/TestUtils/StubHost.cpp

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.i"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rbova/GithubProjects/dolphin/Source/UnitTests/TestUtils/StubHost.cpp > CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.i

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.s"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rbova/GithubProjects/dolphin/Source/UnitTests/TestUtils/StubHost.cpp -o CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.s

# Object files for target Test_MMIOTest
Test_MMIOTest_OBJECTS = \
"CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o" \
"CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o"

# External object files for target Test_MMIOTest
Test_MMIOTest_EXTERNAL_OBJECTS =

Binaries/Tests/MMIOTest: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/MMIOTest.cpp.o
Binaries/Tests/MMIOTest: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/__/TestUtils/StubHost.cpp.o
Binaries/Tests/MMIOTest: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/build.make
Binaries/Tests/MMIOTest: Source/Core/Core/libcore.a
Binaries/Tests/MMIOTest: Externals/gtest/libgtest.a
Binaries/Tests/MMIOTest: Source/Core/VideoBackends/OGL/libvideoogl.a
Binaries/Tests/MMIOTest: Source/Core/VideoBackends/Software/libvideosoftware.a
Binaries/Tests/MMIOTest: Source/Core/VideoCommon/libvideocommon.a
Binaries/Tests/MMIOTest: Source/Core/Core/libcore.a
Binaries/Tests/MMIOTest: Source/Core/VideoBackends/OGL/libvideoogl.a
Binaries/Tests/MMIOTest: Source/Core/VideoBackends/Software/libvideosoftware.a
Binaries/Tests/MMIOTest: Source/Core/VideoCommon/libvideocommon.a
Binaries/Tests/MMIOTest: Source/Core/AudioCommon/libaudiocommon.a
Binaries/Tests/MMIOTest: Externals/soundtouch/libSoundTouch.a
Binaries/Tests/MMIOTest: Externals/Bochs_disasm/libbdisasm.a
Binaries/Tests/MMIOTest: Source/Core/DiscIO/libdiscio.a
Binaries/Tests/MMIOTest: Source/Core/InputCommon/libinputcommon.a
Binaries/Tests/MMIOTest: Externals/SFML/libsfml-network.a
Binaries/Tests/MMIOTest: Externals/SFML/libsfml-system.a
Binaries/Tests/MMIOTest: Externals/polarssl/library/libpolarssl.a
Binaries/Tests/MMIOTest: Externals/LZO/liblzo2.a
Binaries/Tests/MMIOTest: Externals/miniupnpc/libminiupnpc.a
Binaries/Tests/MMIOTest: /usr/lib/libiconv.dylib
Binaries/Tests/MMIOTest: Source/Core/Common/libcommon.a
Binaries/Tests/MMIOTest: Externals/SOIL/libSOIL.a
Binaries/Tests/MMIOTest: Externals/libpng/libpng.a
Binaries/Tests/MMIOTest: Externals/xxhash/libxxhash.a
Binaries/Tests/MMIOTest: Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/rbova/GithubProjects/dolphin/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../Binaries/Tests/MMIOTest"
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && mkdir -p /Users/rbova/GithubProjects/dolphin/Build/Binaries/Tests
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test_MMIOTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/build: Binaries/Tests/MMIOTest

.PHONY : Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/build

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/clean:
	cd /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core && $(CMAKE_COMMAND) -P CMakeFiles/Test_MMIOTest.dir/cmake_clean.cmake
.PHONY : Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/clean

Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/depend:
	cd /Users/rbova/GithubProjects/dolphin/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rbova/GithubProjects/dolphin /Users/rbova/GithubProjects/dolphin/Source/UnitTests/Core /Users/rbova/GithubProjects/dolphin/Build /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core /Users/rbova/GithubProjects/dolphin/Build/Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/UnitTests/Core/CMakeFiles/Test_MMIOTest.dir/depend
