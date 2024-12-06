cmake_minimum_required(VERSION 3.11.0)
project(calculator C)
include(${CMAKE_SOURCE_DIR}/config.cmake)
add_executable(calculator main.c)



set(OPERATIONS "")

if(DADD)
    list(APPEND OPERATIONS add)
endif()

if(DSUB)
    list(APPEND OPERATIONS sub)
endif()

if(DMUL)
    list(APPEND OPERATIONS mul)
endif()

if(DDIV)
    list(APPEND OPERATIONS div)
endif()

if(DMOD)
    list(APPEND OPERATIONS mod)
endif()


generate_configuration("${OPERATIONS}")
file(GLOB SUBDIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} */CMakeLists.txt)

foreach(SUBDIR ${SUBDIRS})
    string(REGEX REPLACE "/CMakeLists.txt$" "" TARGET_DIR ${SUBDIR})
    add_subdirectory(${TARGET_DIR})
endforeach()



target_link_libraries(calculator PRIVATE mul)
target_link_libraries(calculator PRIVATE Add)
target_link_libraries(calculator PRIVATE Sub)
target_link_libraries(calculator PRIVATE modulus)
target_link_libraries(calculator PRIVATE division)

