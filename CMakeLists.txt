cmake_minimum_required (VERSION 2.6) 
project(test_t)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")


add_executable(client client.cpp )
add_executable(server server.cpp)
add_subdirectory(libs)
target_link_libraries(server TCP_server)
target_link_libraries(server UDP_server)








# set(SOURCES TCP_server.cpp)
# set(HEADERS TCP_server.h)
# add_library(TCP_server ${SOURCES} ${HEADERS})

# # target_include_directories(TCP_server PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# set(SOURCES TCP_server.cpp)
# set(HEADERS TCP_server.h)
# # add_library(TCP_server ${SOURCES} ${HEADERS})
# # target_include_directories(TCP_server PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
# # add_subdirectory(libs)


# # target_link_libraries(server TCP_server)
# # target_link_libraries(server lib)

# target_link_libraries(server TCP_server)		