include(GoogleTest)

function(add_gtest TEST_NAME)
    message(DEBUG "TEST NAME: ${TEST_NAME}")
    message(DEBUG "ARGS: ${ARGN}")
    add_executable(${TEST_NAME}
        ${ARGN}
    )
    target_link_libraries(${TEST_NAME}
        PRIVATE
            CONAN_PKG::gtest
    )
    add_test(NAME ${TEST_NAME} COMMAND ${TEST_NAME} WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
endfunction()
