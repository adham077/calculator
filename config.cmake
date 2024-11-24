macro(generate_configuration)
    find_package(Python3 REQUIRED)
    find_program(CONFIG_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/config.py REQUIRED)
    set(CONFIG_HEADER "${CMAKE_BINARY_DIR}/configuration.h")

    if(NOT Python3_EXECUTABLE)
        set(Python3_EXECUTABLE "/usr/bin/python3")
    endif()

    set(OPERATIONS "" CACHE STRING "Space-separated list of operations (e.g., 'add sub mul')")
    message(STATUS "Operations selected: ${OPERATIONS}")

    string(REPLACE " " ";" OPERATION_LIST "${OPERATIONS}")

    add_custom_command(
        OUTPUT "${CONFIG_HEADER}"
        COMMAND ${Python3_EXECUTABLE} ${CONFIG_SCRIPT} ${OPERATION_LIST}
        WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
        COMMENT "Generating configuration header for operations: ${OPERATIONS}"
    )

    add_custom_target(
        generate_config ALL
        DEPENDS "${CONFIG_HEADER}"
    )

    add_dependencies(calculator generate_config)
endmacro()
