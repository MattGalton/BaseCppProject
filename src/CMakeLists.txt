cmake_minimum_required(VERSION 3.16)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(base CXX)

# C++ flags
set (CMAKE_CXX_FLAGS "-Werror")

# # So any target's file can #include from the root directory
# include_directories(${PROJECT_SOURCE_DIR})

# CTest!
include(CTest)

function(include_from_cmake_dir FILENAME)
    include("${CMAKE_CURRENT_LIST_DIR}/cmake/${FILENAME}")
endfunction()

# Conan!
set(CONAN_REQUIRES
    gtest/1.11.0
)
include_from_cmake_dir("install_conan_packages.cmake")

# Extra functions!
include_from_cmake_dir("functions.cmake")

add_subdirectory(base)
