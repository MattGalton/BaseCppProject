project(base-executable)

add_executable(Base main.cxx)

install(
    TARGETS Base
    DESTINATION ${CMAKE_SOURCE_DIR}/../bin/
)
