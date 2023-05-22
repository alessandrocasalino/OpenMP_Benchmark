set(GTEST_DOWNLOAD_URL "https://github.com/google/googletest/archive/refs/tags/release-1.12.1.tar.gz" CACHE STRING "")
set(GTEST_DOWNLOAD_URL_HASH "MD5=e82199374acdfda3f425331028eb4e2a" CACHE STRING "")

if(DOWNLOAD_DEPS)
    message(STATUS "Downloading Google Test from: ${GTEST_DOWNLOAD_URL}")
    include(FetchContent)
    FetchContent_Declare(
            googletest
            URL ${GTEST_DOWNLOAD_URL}
            URL_HASH ${GTEST_DOWNLOAD_URL_HASH})
    FetchContent_MakeAvailable(googletest)
else(DOWNLOAD_DEPS)
    find_package(GTest REQUIRED)
endif(DOWNLOAD_DEPS)