
cmake_minimum_required(VERSION 3.31)

project(modulus C)

include_directories("Include")

set(C-SOURCE modulus.c)

add_library(${PROJECT_NAME} STATIC src/modulus.c)






