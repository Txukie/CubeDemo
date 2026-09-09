# CMakeLists.txt for a simple OpenGL project using GLFW, GLAD, and GLM
cmake_minimum_required(VERSION 3.20)
project(CubeDemo LANGUAGES CXX)

# Use C++20 for convenience
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(OpenGL REQUIRED)
# GLFW (system package)
find_package(glfw3 REQUIRED)

# Add GLAD via system package
find_package(glad REQUIRED)

# Add executable
add_executable(CubeDemo src/main.cpp)

# Link libraries
target_link_libraries(CubeDemo PRIVATE glfw glad OpenGL::GL)

# macOS specific framework linking
if(APPLE)
  target_link_libraries(CubeDemo PRIVATE "-framework OpenGL")
endif()
