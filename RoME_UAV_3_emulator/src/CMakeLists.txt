cmake_minimum_required(VERSION 3.5)
set(CMAKE_BUILD_TYPE Release)

include_directories(include)

file(GLOB SOURCES "kernel_app/*.c" "memory/*.c" "non_replicated/*.c" "replica_2/*.c")

add_library(model SHARED ${SOURCES})