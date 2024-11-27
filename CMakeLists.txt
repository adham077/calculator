CMAKE_MINIMUM_REQUIRED(VERSION 3.31)

project(Calculator C ) 

# Add subdirectories for modules
add_subdirectory(Add_Module)
add_subdirectory(mul_module)
add_subdirectory(division_cmake)
add_subdirectory(sub_module)
add_subdirectory(Modulus_Module)

# Add include directories for each driver
include_directories(
    Add_Module/Include
    mul_module/inc
    division_cmake/include
    sub_module/include
    Modulus_Module/Include
)

# Add the main executable
add_executable(Calculator main.c)

# Link all drivers to the main executable
# Used PRIVATE here cuz Calculator is the final output and no other target will use it 
target_link_libraries(Calculator PRIVATE Add_Module mul_module division_cmake sub_module Modulus_Module)
