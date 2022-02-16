project(server)
cmake_minimum_required(VERSION 3.21)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

SET_PROPERTY(GLOBAL PROPERTY USE_FOLDERS ON)

SET(SERVER_SF_BUILD_PATH ${PROJECT_BINARY_DIR}) # устанавливаем папку для бинарников

SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${SERVER_SF_BUILD_PATH}/bin) # говорим куда собирать наши бинарники

if (NOT DEFINED CMAKE_BUILD_TYPE)
    SET(CMAKE_BUILD_TYPE "Debug") # устанавливаем генератор в Debug версию
endif()

add_subdirectory(FortuneClient) # добавляем поддиректории наших проектов
add_subdirectory(FortuneServer)
add_subdirectory(TCPSocket)


