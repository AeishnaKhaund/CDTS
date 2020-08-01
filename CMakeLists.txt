cmake_minimum_required(VERSION 3.16)
project(CDTS CUDA)

set(CMAKE_CUDA_STANDARD 14)
find_package(Eigen3 REQUIRED)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/computation_engine/*.cpp ${PROJECT_SOURCE_DIR}/computation_engine/*.cu ${PROJECT_SOURCE_DIR}/computation_engine/*.cuh ${PROJECT_SOURCE_DIR}/computation_engine/*.h ${PROJECT_SOURCE_DIR}/computation_engine/core/*.cpp ${PROJECT_SOURCE_DIR}/computation_engine/core/*.h ${PROJECT_SOURCE_DIR}/computation_engine/core/*.cu ${PROJECT_SOURCE_DIR}/computation_engine/core/*.cuh ${PROJECT_SOURCE_DIR}/computation_engine/core/errorAndDeviceProps/*.cuh ${PROJECT_SOURCE_DIR}/computation_engine/core/solarSystem/*.cpp ${PROJECT_SOURCE_DIR}/computation_engine/core/solarSystem/*.h ${PROJECT_SOURCE_DIR}/computation_engine/core/solarSystem/*.cu ${PROJECT_SOURCE_DIR}/computation_engine/core/solarSystem/*.cuh)
include_directories(${PROJECT_SOURCE_DIR}/computation_engine)
add_executable(compute ${SRC_FILES})
target_link_libraries(compute Eigen3::Eigen )
set_target_properties(
        compute
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)