CMAKE_MINIMUM_REQUIRED(VERSION 3.31) 

# set project name + used languages
project(mulFeature C)

# to add directory path 
include_directories(${PROJECT_SOURCE_DIR}/inc) 

file(GLOB MUL_SRC ${PROJECT_SOURCE_DIR}/src/*.c)

# to create a library out of these files
add_library(mulFeature STATIC ${MUL_SRC})
