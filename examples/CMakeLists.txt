find_package(Boost 1.59.0 REQUIRED)

include_directories(${Boost_INCLUDE_DIRS} ${TEST_SOURCE_DIR}/src) 

add_executable (fuzz fuzz.cpp)
add_executable (isvalid isvalid.cpp)
add_executable (nfp nfp.cpp)
add_executable (writeGolden writeGolden.cpp)
