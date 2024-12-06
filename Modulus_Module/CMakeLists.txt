
cmake_minimum_required(VERSION 3.2)

project(modulus C)


set(C-SOURCE modulus.c)

add_library(${PROJECT_NAME} STATIC src/modulus.c)
target_include_directories(modulus INTERFACE Include)







