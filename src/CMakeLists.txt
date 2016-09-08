cmake_minimum_required(VERSION 2.8.9)
project(Test)

set(cpp_flags "-std=c++11 -Wall -Wextra -Werror")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${cpp_flags}")

include_directories(.)
add_subdirectory(printer)
add_subdirectory(main)
