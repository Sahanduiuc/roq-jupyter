cmake_minimum_required(VERSION 3.1)

project(roq-jupyter)

if(DEFINED ENV{CONDA_PREFIX})
  set(CMAKE_INSTALL_PREFIX $ENV{CONDA_PREFIX})
  set(CMAKE_FIND_ROOT_PATH $ENV{CONDA_PREFIX})
endif()

add_subdirectory(notebooks)
