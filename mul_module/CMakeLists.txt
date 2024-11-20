cmake_minimum_required(VERSION 3.2.0)
project(mul_feature C)
include_directories("inc")
add_library(mul STATIC src/mul.c)
add_executable(mul_feature main.c)
target_link_libraries(mul_feature PRIVATE mul)

