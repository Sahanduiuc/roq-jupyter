cmake_minimum_required(VERSION 3.0)

project(notebooks)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/simple.ipynb DESTINATION usr/share/roq/jupyter/notebooks)
