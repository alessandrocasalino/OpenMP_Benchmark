
add_executable(bench)
target_sources(bench
        PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/saxpy.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/pi_value.cpp
        )
target_link_libraries(bench PRIVATE
        benchmark::benchmark
        benchmark::benchmark_main
        OpenMP::OpenMP_CXX)
set_target_properties(bench PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
        CXX_EXTENSIONS OFF)
enable_testing()
add_test(bench bench)