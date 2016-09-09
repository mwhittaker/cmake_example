# BOXED("some string") pretty prints a string like this:
#
#   ===============
#   | some string |
#   ===============
function(BOXED s)
    string(REGEX REPLACE "." "=" banner "${s}")
    MESSAGE(STATUS "==${banner}==")
    MESSAGE(STATUS "| ${s} |")
    MESSAGE(STATUS "==${banner}==")
endfunction(BOXED)

# PRINT_VARIABLES() pretty prints the name and values of some useful variables.
function(PRINT_VARIABLES)
    BOXED("Variables")
    MESSAGE(STATUS "CMAKE_BINARY_DIR:          ${CMAKE_BINARY_DIR}")
    MESSAGE(STATUS "CMAKE_COMMAND:             ${CMAKE_COMMAND}")
    MESSAGE(STATUS "CMAKE_CURRENT_BINARY_DIR:  ${CMAKE_CURRENT_BINARY_DIR}")
    MESSAGE(STATUS "CMAKE_CURRENT_LIST_DIR:    ${CMAKE_CURRENT_LIST_DIR}")
    MESSAGE(STATUS "CMAKE_CURRENT_LIST_FILE:   ${CMAKE_CURRENT_LIST_FILE}")
    MESSAGE(STATUS "CMAKE_CURRENT_LIST_LINE:   ${CMAKE_CURRENT_LIST_LINE}")
    MESSAGE(STATUS "CMAKE_CURRENT_SOURCE_DIR:  ${CMAKE_CURRENT_SOURCE_DIR}")
    MESSAGE(STATUS "CMAKE_FILES_DIRECTORY:     ${CMAKE_FILES_DIRECTORY}")
    MESSAGE(STATUS "CMAKE_MODULE_PATH:         ${CMAKE_MODULE_PATH}")
    MESSAGE(STATUS "CMAKE_PROJECT_NAME:        ${CMAKE_PROJECT_NAME}")
    MESSAGE(STATUS "CMAKE_ROOT:                ${CMAKE_ROOT}")
    MESSAGE(STATUS "CMAKE_SOURCE_DIR:          ${CMAKE_SOURCE_DIR}")
    MESSAGE(STATUS "EXECUTABLE_OUTPUT_PATH:    ${EXECUTABLE_OUTPUT_PATH}")
    MESSAGE(STATUS "LIBRARY_OUTPUT_PATH:       ${LIBRARY_OUTPUT_PATH}")
    MESSAGE(STATUS "PROJECT_BINARY_DIR:        ${PROJECT_BINARY_DIR}")
    MESSAGE(STATUS "PROJECT_NAME:              ${PROJECT_NAME}")
    MESSAGE(STATUS "PROJECT_SOURCE_DIR:        ${PROJECT_SOURCE_DIR}")
    MESSAGE(STATUS "")
endfunction(PRINT_VARIABLES)
