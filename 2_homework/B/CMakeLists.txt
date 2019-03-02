cmake_minimum_required(VERSION 2.8)
project(inside)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall")
set(SOURCES lib.cpp)
set(HEADERS lib.h)
add_library(lib ${SOURCES} ${HEADER})
target_include_directories(lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})


