find_package(Boost COMPONENTS system filesystem REQUIRED)

include_directories (${libnfporb_SOURCE_DIR}/src ${Boost_INCLUDE_DIRS} )

add_executable (unittests test_main.cpp) 

target_link_libraries(unittests
                      ${Boost_FILESYSTEM_LIBRARY}
                      ${Boost_SYSTEM_LIBRARY}
                      ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY}
                      )

