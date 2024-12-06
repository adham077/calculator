CMAKE_MINIMUM_REQUIRED(VERSION 3.31) 

# set project name + used languages
project(SubFeature C)

# to add directory path 
include_directories(${PROJECT_SOURCE_DIR}/include) 

file(GLOB SUB_SRC ${PROJECT_SOURCE_DIR}/src/*.c)

# to create a library out of these files
add_library(SubFeature STATIC ${SUB_SRC})
