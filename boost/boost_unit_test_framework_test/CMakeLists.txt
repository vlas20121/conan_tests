cmake_minimum_required(VERSION 3.15)
project(test_package LANGUAGES CXX)

include(CTest)
enable_testing()

        find_package(Boost COMPONENTS unit_test_framework REQUIRED)
        add_executable(test_exe boostTester.cpp)
        target_link_libraries(test_exe PRIVATE Boost::unit_test_framework)
        add_test(NAME boost_test COMMAND test_exe)
