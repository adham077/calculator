cmake_minimum_required(VERSION 3.2)
project(Sub C)

add_library(${PROJECT_NAME} STATIC src/sub.c)
target_include_directories(Sub INTERFACE include)


