# - Config file for the OKVIS package
# It defines the following variables
#  OKVIS_INCLUDE_DIRS - include directories for FooBar
#  OKVIS_LIBRARIES    - libraries to link against
#  OKVIS_EXECUTABLE   - the okvis_app_synchronous executable
#  OKVIS_CERES_CONFIG - path to CeresConfig.cmake, to use find_package(ceres)

set(OKVIS_CERES_CONFIG "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/share/Ceres/")
 
# Compute paths
get_filename_component(OKVIS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(OKVIS_INCLUDE_DIRS "/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_util/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_kinematics/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_time/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_cv/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_common/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_ceres/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_timing/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_matcher/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_frontend/include;/Users/liamkelly/vandyhacks/slam/okvis-master/okvis_multisensor_processing/include;/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug")
 
# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET okvis AND NOT OKVIS_BINARY_DIR)
  include("${OKVIS_CMAKE_DIR}/okvisTargets.cmake")
endif()
 
# These are IMPORTED targets created by okvisTargets.cmake
set(OKVIS_LIBRARIES 
    okvis_util
    okvis_kinematics
    okvis_time
    okvis_cv 
    okvis_common
    okvis_ceres
    okvis_timing
    okvis_matcher
    okvis_frontend 
    okvis_multisensor_processing )
set(OKVIS_EXECUTABLE okvis_app_synchronous)
