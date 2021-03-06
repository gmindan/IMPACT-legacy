cmake_minimum_required (VERSION 2.8)
project(SolverUtils)
IF(NOT ENABLE_MPI)
  add_definitions( -DDUMMY_MPI )
ELSE()
  FIND_PACKAGE(MPI REQUIRED)
  add_definitions( -DMPICH_IGNORE_CXX_SEEK )
  INCLUDE_DIRECTORIES(${MPI_INCLUDE_PATH})
ENDIF()

set (BUILD_STATIC FALSE CACHE BOOL "Build static COM library")
set (ENABLE_MPI TRUE CACHE BOOL "Build with MPI Support")
set (EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin CACHE PATH "Single directory for all executables.")
set (LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib CACHE PATH "Single directory for all libraries and archives.")
mark_as_advanced (LIBRARY_OUTPUT_PATH EXECUTABLE_OUTPUT_PATH)

file(GLOB CPP_SRCS "src/*.C")
set (ALL_SRCS "${CPP_SRCS}" )
set_source_files_properties(${ALL_SRCS} PROPERTIES COMPILE_FLAGS "-fPIC ${MPI_CXX_COMPILE_FLAGS}" )
set (LIB_SRCS src/GeoPrimitives.C src/PGeoPrim.C src/Mesh.C src/PMesh.C src/BSMesh.C src/MeshVTK.C src/FEM.C src/MeshUtils.C)
# rpath settings
SET(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

find_path(IMPACT_INC com.h HINTS ../COM/include)
FILE(GLOB H_FILES include/*.H)
FILE(GLOB h_FILES include/*.h)
FILE(GLOB hpp_FILES include/*.hpp)
SET(SolverUtil_INC_FILES ${H_FILES} ${h_FILES} ${hpp_FILES})

include_directories(include ${IMPACT_INC} ${CMAKE_BINARY_DIR}/include)


IF(NOT BUILD_STATIC)
  add_library(SolverUtils SHARED ${LIB_SRCS})
ELSE()
  add_library(SolverUtils STATIC ${LIB_SRCS})
  add_definitions( -DSTATIC_LINK )
ENDIF()
TARGET_LINK_LIBRARIES(SolverUtils ${IRAD_LIB} ${MPI_CXX_LIBRARIES})
SET_TARGET_PROPERTIES(SolverUtils PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
ADD_EXECUTABLE(wrl2mesh src/wrl2mesh.C)
TARGET_LINK_LIBRARIES(wrl2mesh SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(gg2mesh src/gg2mesh.C)
TARGET_LINK_LIBRARIES(gg2mesh SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(t3d2mesh src/t3d2mesh.C)
TARGET_LINK_LIBRARIES(t3d2mesh SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(s2ps src/s2ps.C)
ADD_EXECUTABLE(test_2d src/test_2d.C)
TARGET_LINK_LIBRARIES(test_2d SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(test_mtx src/test_mtx.C)
TARGET_LINK_LIBRARIES(test_mtx SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(meshgen2d src/meshgen2d.C)
TARGET_LINK_LIBRARIES(meshgen2d SolverUtils ${MPI_CXX_LIBRARIES})
ADD_EXECUTABLE(winmanip utils/winmanip.C)
TARGET_LINK_LIBRARIES(winmanip SolverUtils SITCOM ${MPI_CXX_LIBRARIES})
SET_TARGET_PROPERTIES(wrl2mesh PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(gg2mesh PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(t3d2mesh PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(test_2d PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(test_mtx PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(meshgen2d PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")
SET_TARGET_PROPERTIES(winmanip PROPERTIES LINK_FLAGS "${MPI_CXX_LINK_FLAGS}")

FIND_LIBRARY(METISLIB metis)
FIND_LIBRARY(PMETISLIB parmetis)
FIND_PATH(METISINC metis.h)
IF(METISLIB OR PMETISLIB)
  include_directories(${METISINC})
  ADD_DEFINITIONS( -DUSE_METIS )
  IF(PMETISLIB)
    ADD_DEFINITIONS( -DPMETIS )
  ENDIF()
ENDIF()
#ADD_EXECUTABLE(meshtest src/meshtest1.C)
#IF(METISLIB OR PMETISLIB) 
#  IF(PMETISLIB) 
#    TARGET_LINK_LIBRARIES(meshtest SolverUtils ${PMETISLIB} ${METISLIB})
#  ELSE()
#    TARGET_LINK_LIBRARIES(meshtest SolverUtils ${METISLIB})
#  ENDIF(PMETISLIB)
#ELSE()
#  TARGET_LINK_LIBRARIES(meshtest SolverUtils)
#ENDIF()

INSTALL(FILES ${SolverUtil_INC_FILES} DESTINATION include)
INSTALL(TARGETS meshgen2d SolverUtils wrl2mesh gg2mesh t3d2mesh RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
