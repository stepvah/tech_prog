#!/bin/bash


CFLAGS="-std=c++11 -Wall"
SOURCES="main.cpp"


echo "Build started"
g++ $CFLAGS $SOURCES -o bot


echo "Build finished"
