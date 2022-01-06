cmake_minimum_required(VERSION 3.22.1)

project(OCamlCompileTest NONE)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/CMake")
enable_language(OCaml)

message("${CMAKE_CURRENT_DIR}")
add_library(objlib OBJECT hello_world.ml)
add_executable(yay $<TARGET_OBJECTS:objlib>)
