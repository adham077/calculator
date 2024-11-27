cmake_minimum_required(VERSION 3.31)

project(Add C)

include_directories("Include")

set(C-SOURCE Add_Function.c)

add_library(${PROJECT_NAME} STATIC src/Add_Function.c)

target_include_directories(Add INTERFACE Include)