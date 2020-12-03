cmake_minimum_required(VERSION 2.6)
set(CMAKE_INSTALL_PREFIX $HOME/.local)
project(Assign_4)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build/bin)

include_directories(${PROJECT_SOURCE_DIR}/include)
add_subdirectory(src)
add_subdirectory(test)

enable_testing()
