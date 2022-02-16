cmake_minimum_required(VERSION 3.21)
project(FortuneClient)

set(CMAKE_AUTOMOC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5Core)
find_package(Qt5Widgets)
find_package(Qt5Network)

FILE(GLOB_RECURSE SRC_CPP ${PROJECT_SOURCE_DIR}/src *.cpp)
FILE(GLOB_RECURSE SRC_H ${PROJECT_SOURCE_DIR}/src *.h)
FILE(GLOB_RECURSE SRC_HPP ${PROJECT_SOURCE_DIR}/src *.hpp)

add_executable(FortuneClient ${SRC_CPP} ${SRC_H} ${SRC_HPP})


target_link_libraries (FortuneClient ${Qt5Core_LIBRARIES}
        ${Qt5Widgets_LIBRARIES} ${Qt5Network_LIBRARIES})

