# Install script for directory: /Users/rbova/GithubProjects/dolphin/Source/Core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/rbova/GithubProjects/dolphin/Build/install-dummy")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/AudioCommon/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/Common/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/Core/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/DiscIO/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/DolphinWX/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/InputCommon/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/UICommon/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/VideoCommon/cmake_install.cmake")
  include("/Users/rbova/GithubProjects/dolphin/Build/Source/Core/VideoBackends/cmake_install.cmake")

endif()
