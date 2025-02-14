cmake_minimum_required (VERSION 3.9)
project (noogle-plugin)

find_package(PkgConfig)

pkg_check_modules(NIX REQUIRED nix-expr>=2.24 nix-main>=2.24 nix-store>=2.24)

find_path(BOOST_INCLUDE_DIR boost/format.hpp)
if(BOOST_INCLUDE_DIR STREQUAL "BOOST_INCLUDE_DIR-NOTFOUND")
  message(FATAL_ERROR "Could not find Boost formatting library.")
endif()
include_directories(${BOOST_INCLUDE_DIR})

if(APPLE)
  set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -flat_namespace -undefined suppress")
endif()

add_library(noogle-plugin MODULE plugin.cc)

target_include_directories(noogle-plugin PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
target_include_directories(noogle-plugin PUBLIC ${NIX_INCLUDE_DIRS})
target_compile_options(noogle-plugin PUBLIC ${NIX_CFLAGS_OTHER})

install(TARGETS noogle-plugin DESTINATION lib/nix/plugins)
