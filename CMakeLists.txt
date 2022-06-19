cmake_minimum_required(VERSION 3.19)
project(Project)

set(CMAKE_CXX_STANDARD 17)

add_executable(Project src/main.cpp src/glad.c src/Shader.h)

target_include_directories(Project PRIVATE include)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

# Copy resources to build dir
add_custom_command(TARGET Project PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/resources $<TARGET_FILE_DIR:Project>/resources)

ADD_SUBDIRECTORY(../glfw-3.3.4 binary_dir)
target_link_libraries(Project glfw)