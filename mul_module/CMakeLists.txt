cmake_minimum_required(VERSION 3.11.0)
project(mul C)
add_library(mul STATIC src/mul.c)
target_include_directories(mul INTERFACE inc)



