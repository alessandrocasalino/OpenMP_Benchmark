
add_executable(bench_saxpy)
target_sources(bench_saxpy
        PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/saxpy.cpp
        )
target_link_libraries(bench_saxpy PRIVATE
        benchmark::benchmark
        benchmark::benchmark_main
        OpenMP::OpenMP_CXX
        m                               # math library
        )
set_target_properties(bench_saxpy PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS OFF)
enable_testing()
add_test(bench_saxpy bench_saxpy)


add_executable(bench_pi)
target_sources(bench_pi
        PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/pi_value.cpp
        )
target_link_libraries(bench_pi PRIVATE
        benchmark::benchmark
        benchmark::benchmark_main
        OpenMP::OpenMP_CXX
        m                               # math library
        )
set_target_properties(bench_pi PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS OFF)
enable_testing()
add_test(bench_pi bench_pi)



add_executable(bench_laplace2d)
target_sources(bench_laplace2d
        PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/laplace2d.cpp
        )
target_link_libraries(bench_laplace2d PRIVATE
        benchmark::benchmark
        benchmark::benchmark_main
        OpenMP::OpenMP_CXX
        m                               # math library
        )
set_target_properties(bench_laplace2d PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS OFF)
enable_testing()
add_test(bench_laplace2d bench_laplace2d)