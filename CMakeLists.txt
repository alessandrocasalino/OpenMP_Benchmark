cmake_minimum_required(VERSION 3.25)
project(OpenMP_Google_Benchmark)

set(CMAKE_CXX_STANDARD 20)

option(GTEST "Enable building of unit tests" ON)
option(BENCHMARK "Enable building of benchmark routines" ON)
option(DOWNLOAD_DEPS "Download dependencies via external sources; when this option is OFF, dependencies must be provided via regular find_package machinery"
        ON)
option(OPENMP "Enable OpenMP" ON)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/")

if(OPENMP)
    find_package(OpenMP)
    if (OPENMP_FOUND)
        set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
        set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
        set (ENV{OMP_DYNAMIC} false)
    endif()
endif()

if(GTEST)
    include(AddGTest)
    enable_testing()
endif()

if(BENCHMARK)
    include(AddGBenchmark)
    add_subdirectory(benchmark)
endif(BENCHMARK)
