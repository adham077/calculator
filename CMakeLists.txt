cmake_minimum_required(VERSION 3.11.0)

project(calculator C)

include(${CMAKE_SOURCE_DIR}/config.cmake)

add_executable(calculator main.c)

generate_configuration("${OPERATIONS}")

add_subdirectory(Add_module)
add_subdirectory(mul_module)
add_subdirectory(sub_module)
add_subdirectory(Modulus_module)
add_subdirectory(division_cmake)


target_link_libraries(${PROJECT_NAME} PRIVATE Add mul_feature modulus Sub division)