cmake_minimum_required(VERSION 2.8)

list(APPEND CMAKE_MODULE_PATH
	${CMAKE_SOURCE_DIR}/cmake/vala
)

find_package(Vala REQUIRED)
include(${VALA_USE_FILE})

message("Vala found? ${VALA_FOUND} ${VALA_VERSION} ${VALA_EXECUTABLE}")

vala_precompile(VALA_C
    Main.vala
OPTIONS
    --enable-experimental-non-null
)

add_executable(cmake-test ${VALA_C})
