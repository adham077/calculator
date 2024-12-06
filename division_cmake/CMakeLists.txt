cmake_minimum_required(VERSION 3.22)
project(division C)
add_library(division STATIC src/division.c)
target_include_directories(division INTERFACE include)

