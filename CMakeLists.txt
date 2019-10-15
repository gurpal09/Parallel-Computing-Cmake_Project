cmake_minimum_required(VERSION 2.8.11)

project(wave)

#set(dir "/home/jaber/GEM_AMR/obj")

#disable in source build
#set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)


message(STATUS "cmake is building on a ${CMAKE_SYSTEM_NAME} system")
set(dir ${PROJECT_SOURCE_DIR})
message("project source dir" ${dir})

set(CMAKE_FILES_DIRECTORY ${dir}/build)
message("Filed Directory" ${CMAKE_FILES_DIRECTORY})

# get the number of physical procesors 

#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${dir}/bin/)
#set(CMAKE_BUILD_DIRECTORY ${dir}/build)
#set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
#set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

#SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/build)

message("project binary dir" ${EXECUTABLE_OUTPUT_PATH})
message("CMAKE SOURCE DIR:" ${CMAKE_SOURCE_DIR})
message("CMAKE_BINARY_DIR:" ${CMAKE_BINARY_DIR})


# Out-of-Source build is required by wave, this if statement prevents
# in-source-builds 

if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
    message( FATAL_ERROR "In-source builds not allowed. Please make a new directory (called a build directory) and run CMake from there. You may need to remove CMakeCache.txt." )
endif()


message("cmake Home Dir:" ${CMAKE_HOME_DIRECTORY})
message("cmake Build Dir:" ${CMAKE_BUILD_DIRECTORY})
message("cmake Binary Dir:" ${CMAKE_BINARY_DIR})
message("cmake source dir:" ${CMAKE_SOURCE_DIR})


############################################################################
#
#                    SECTION: FINDING-PACKAGE
#
#        1) MPI and HDF5 have native FindXXX.cmake's provided by cmake
#        2) For Zoltan and ParMETIS one needs to specify FindXXX.cmake 
#        3) These non-native to cmake modules are included in CMakeModules
#
############################################################################

#find HDF5
#ifind_package(HDF5 ${HDF5_MIN_VERSION} REQUIRED)
#if(HDF5_FOUND)
#include_directories(${HDF5_INCLUDE_DIRS})
#message( "${Red}HDF5 Library Found: ${ColourReset}" ${HDF5_INCLUDE_DIRS})
#message("${Red} HDF5 Library Found: ${ColourReset}")
#endif()

# find MPI
#find_package(MPI ${MPI_MIN_VERSION} REQUIRED)
#if(MPI_FOUND)
#include_directories(${MPI_INCLUDE_PATH})
#message( "${Red} MPI Library Found : ${ColourReset}" ${MPI_INCLUDE_PATH})
#message("${Red} MPI Library Found : ${ColourReset}")
#endif()


###########################################################################
#
#                    SECTION: BUILD AND INSTALL
#
#        1) Build all the *.cpp and *.c files in "/src" directory
#        2) Link with external package libraries 
#        3) Install the final executable in "/bin"
#
############################################################################

include_directories(${dir}/include)
# dont forget to modify the address of the source files
file(GLOB OBJ "${dir}/src/*.c")
#set(CMAKE_BUILD_FILES_DIRECTORY ${dir})
#set(CMAKE_BUILD_DIRECTORY ${dir}/bin)      

set(EXECUTABLE_OUTPUT_PATH ${dir}/bin)

#add_definitions(-Wall -Wno-unused-variable  -std=c++0x)

# Define all header files for linking, this is required such that one doesnt
# have to hardcode the directories for I/O operations and hence ensure
# portability

#set(HEADER_FILES "${dir}/src/include/io.h")

#message("header files" ${HEADER_FILES})

#set (CMAKE_CXX_STANDARD 11)
#set_property(TARGET tgt PROPERTY CXX_STANDARD 11)

if(UNIX)
    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -std=c99 -g -Wunused-variable ")
#    SET(CMAKE_EXEC_LINKER_FLAGS "${CMAKE_EXEC_LINKER_FLAGS} -Wall -std=gnu++0x" )
    SET(CMAKE_EXEC_LINKER_FLAGS "${CMAKE_EXEC_LINKER_FLAGS} -Wall -std=c99 -Wunused-variable" )
endif()
#message( "obj" ${OBJ})
#message( "message to display" ${CMAKE_BUILD_FILES_DIRECTORY})

# Generate Object Files
add_executable(wave ${OBJ} ${HEADER_FILES}) 

#link_directories(/usr/local/zoltan/lib /usr/local/zoltan/include)
#set_target_properties(objects PROPERTIES LINKER_LANGUAGE Cxx)

target_link_libraries(wave m)

#target_link_libraries(wave  ${MPI_LIBRARIES} ${ZOLTAN_LIBRARIES} ${HDF5_C_LIBRARIES})

#target_link_libraries(wave  ${HDF5_C_LIBRARIES})

#install the final executable in bin directory

#install(TARGETS wave DESTINATION ${dir/}bin)

############################################################################
#
#                    SECTION: ARCHIEVING
#
#	 1) it gets the date and appends that to the project name
#	 2) compresses the "/src" in a TGZ format
# 	 3) Puts the resulting file in the "/archieve" directory
#
############################################################################

MACRO (TODAY RESULT)
    IF (WIN32)
        EXECUTE_PROCESS(COMMAND "date" "/T" OUTPUT_VARIABLE ${RESULT})
         string(REGEX REPLACE "(..)/(..)/..(..).*" "\\2.\\1.\\3"
${RESULT} ${${RESULT}})
    ELSEIF(UNIX)
        EXECUTE_PROCESS(COMMAND "date" "+%d/%m/%Y" OUTPUT_VARIABLE ${RESULT})
        string(REGEX REPLACE "(..)/(..)/..(..).*" "\\2.\\1.\\3"
${RESULT} ${${RESULT}})
    ELSE (WIN32)
        MESSAGE(SEND_ERROR "date not implemented")
        SET(${RESULT} 000000)
    ENDIF (WIN32)
ENDMACRO (TODAY)

TODAY(DATE)
message(STATUS "Compilation date = ${DATE}")


# the following two lines specify the file type for binary and source
# generation separately

SET(CPACK_GENERATOR "TGZ")
SET(CPACK_SOURCE_GENERATOR "TGZ")

#INCLUDE(CPack)
# Do not rely on CPACK_xxx variables, they are not set till INCLUDE(CPack) is
# invoked, so there is no way to set them and as cpack to name the file as you
# like, I hard coded the project name and the date as a file_name to be used
# by cpack, this works fine 

#message("package name: " ${CPACK_PACKAGE_NAME})

set(CPACK_PACKAGE_FILE_NAME "wave-${DATE}")

set(CPACK_SOURCE_PACKAGE_FILE_NAME "wave-${DATE}")

# set the directory you would like to be compressed, For under development
# projects it is normally the src directory that includes *.cpp and *.h files

SET(CPACK_SOURCE_INSTALLED_DIRECTORIES "${dir}/src;/")

SET(CPACK_PACKAGE_VENDOR "BSU")

install(FILES ${dir}/CMakeLists.txt DESTINATION ${dir}/src)

message("file name:" ${CPACK_PACKAGE_FILE_NAME})


# This variable (CPACK_OUTPUT_FILE_PREFIX)  will put the result of wave.date.tar.gz into the folder
# named archieve, this is only available in  in CMake versions >= 2.8.3 

set(CPACK_OUTPUT_FILE_PREFIX "${dir}/archieve")

#message("PACKAGE Install Dir:" ${CPACK_PACKAGE_INSTALL_DIRECTORY})

INCLUDE(CPack)


