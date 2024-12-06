cmake_minimum_required(VERSION 3.21)

project(Add C)


set(C-SOURCE Add_Function.c)

add_library(${PROJECT_NAME} STATIC src/Add_Function.c)
target_include_directories(${PROJECT_NAME} INTERFACE Include)

