cmake_minimum_required(VERSION 3.20)
project(compare_cpp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*/*/*.cpp"
)

add_executable(compare_cpp ${SOURCES})

target_include_directories(compare_cpp PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/src"
)
