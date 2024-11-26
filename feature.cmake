# feature.cmake

# Macro to generate configuration file using a Python script
macro(ADD_FEATURE_GENERATOR PYTHON_SCRIPT OPERATION CONFIG_FILE)
    
    # Find Python3 executable
    find_program(PYTHON3_EXECUTABLE python3 REQUIRED)
    
    if(NOT PYTHON3_EXECUTABLE)
        message(FATAL_ERROR "Python3 is required but not found!")
    endif()

    # Add a custom command to run the Python script
    add_custom_command(
        OUTPUT ${CONFIG_FILE}
        COMMAND ${PYTHON3_EXECUTABLE} ${PYTHON_SCRIPT} ${OPERATION}
        DEPENDS ${PYTHON_SCRIPT}
        COMMENT "Running Python script to generate ${CONFIG_FILE} for operation: ${OPERATION}"
        VERBATIM
    )

    # Add a custom target that uses the custom command
    add_custom_target(
        generate_config_${OPERATION}
        DEPENDS ${CONFIG_FILE}
    )

    # Expose the custom target for dependency management
    set(GENERATE_TARGET generate_config_${OPERATION} PARENT_SCOPE)
endmacro()
