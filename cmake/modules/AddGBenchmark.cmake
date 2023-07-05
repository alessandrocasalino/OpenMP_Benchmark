
set(GBENCHMARK_DOWNLOAD_URL "https://github.com/google/benchmark/archive/refs/tags/v1.8.0.tar.gz" CACHE STRING "")
set(GBENCHMARK_DOWNLOAD_URL_HASH "MD5=8ddf8571d3f6198d37852bcbd964f817" CACHE STRING "")

if(DOWNLOAD_DEPS)
    message(STATUS "Downloading Google Benchmark from: ${GBENCHMARK_DOWNLOAD_URL}")
    include(FetchContent)
    FetchContent_Declare(
            googlebenchmark
            URL ${GBENCHMARK_DOWNLOAD_URL}
            URL_HASH ${GBENCHMARK_DOWNLOAD_URL_HASH})
    FetchContent_MakeAvailable(googlebenchmark)
else(DOWNLOAD_DEPS)
    find_package(benchmark REQUIRED)
endif(DOWNLOAD_DEPS)