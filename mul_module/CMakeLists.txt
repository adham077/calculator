cmake_minimum_required(VERSION 3.2.0)
project(calculator C)
include(${CMAKE_SOURCE_DIR}/config.cmake)
add_subdirectory(division_module)
add_executable(calculator main.c)
generate_configuration("${OPERATIONS}")
target_link_libraries(calculator PRIVATE div)

