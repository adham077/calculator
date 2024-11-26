cmake_minimum_required(VERSION 3.31)
project(Calculator)

# Enable Ninja (optional, if using Ninja)
set(CMAKE_MAKE_PROGRAM Ninja)

# Find Python
find_program(PYTHON3_EXECUTABLE python3 REQUIRED)

# Include the feature script (containing the macro)
include(${CMAKE_SOURCE_DIR}/feature.cmake)

# Define paths and variables
set(PYTHON_SCRIPT ${CMAKE_SOURCE_DIR}/generate_config.py)
set(CONFIG_FILE ${CMAKE_BINARY_DIR}/config.h)
set(OPERATION "add" CACHE STRING "Calculator operation")

# Use the macro to set up the custom command and target for config generation
ADD_FEATURE_GENERATOR(${PYTHON_SCRIPT} ${OPERATION} ${CONFIG_FILE})

# Add subdirectories for modules
add_subdirectory(Add_Module)
add_subdirectory(mul_module)
add_subdirectory(division_cmake)
add_subdirectory(sub_module)
add_subdirectory(Modulus_Module)

# Make the main target depend on the generated config
add_dependencies(main ${GENERATE_TARGET})  # Ensures 'main' depends on the custom config generation

# Include the generated file in the main target
target_include_directories(main PRIVATE ${CMAKE_BINARY_DIR})
