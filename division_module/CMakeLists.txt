cmake_minimum_required(VERSION 3.22)
project(div C)
target_include_directories(div INTERFACE include)
//include_directories("include")
add_library(div STATIC src/division.c)

