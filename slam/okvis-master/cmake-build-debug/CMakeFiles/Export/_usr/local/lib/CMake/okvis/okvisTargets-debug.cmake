#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "okvis_util" for configuration "Debug"
set_property(TARGET okvis_util APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_util PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_util.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_util )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_util "/usr/local/lib/libokvis_util.a" )

# Import target "okvis_kinematics" for configuration "Debug"
set_property(TARGET okvis_kinematics APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_kinematics PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_kinematics.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_kinematics )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_kinematics "/usr/local/lib/libokvis_kinematics.a" )

# Import target "okvis_time" for configuration "Debug"
set_property(TARGET okvis_time APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_time PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_time.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_time )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_time "/usr/local/lib/libokvis_time.a" )

# Import target "okvis_cv" for configuration "Debug"
set_property(TARGET okvis_cv APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_cv PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util;okvis_kinematics;okvis_time;opencv_core;opencv_highgui;opencv_imgproc;opencv_features2d;brisk;agast"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_cv.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_cv )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_cv "/usr/local/lib/libokvis_cv.a" )

# Import target "okvis_common" for configuration "Debug"
set_property(TARGET okvis_common APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_common PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util;okvis_kinematics;okvis_time;okvis_cv"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_common.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_common )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_common "/usr/local/lib/libokvis_common.a" )

# Import target "okvis_ceres" for configuration "Debug"
set_property(TARGET okvis_ceres APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_ceres PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util;okvis_cv;okvis_common;ceres;/usr/local/lib/libspqr.dylib;/usr/local/lib/libtbb.dylib;/usr/local/lib/libtbbmalloc.dylib;/usr/local/lib/libcholmod.dylib;/usr/local/lib/libccolamd.dylib;/usr/local/lib/libcamd.dylib;/usr/local/lib/libcolamd.dylib;/usr/local/lib/libamd.dylib;/System/Library/Frameworks/Accelerate.framework;/System/Library/Frameworks/Accelerate.framework;/System/Library/Frameworks/Accelerate.framework;/usr/local/lib/libsuitesparseconfig.dylib;/usr/local/lib/libcxsparse.dylib;/usr/local/lib/libglog.dylib"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_ceres.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_ceres )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_ceres "/usr/local/lib/libokvis_ceres.a" )

# Import target "okvis_timing" for configuration "Debug"
set_property(TARGET okvis_timing APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_timing PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_timing.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_timing )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_timing "/usr/local/lib/libokvis_timing.a" )

# Import target "okvis_matcher" for configuration "Debug"
set_property(TARGET okvis_matcher APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_matcher PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_util"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_matcher.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_matcher )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_matcher "/usr/local/lib/libokvis_matcher.a" )

# Import target "okvis_frontend" for configuration "Debug"
set_property(TARGET okvis_frontend APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_frontend PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "brisk;agast;opengv;ceres;/usr/local/lib/libspqr.dylib;/usr/local/lib/libtbb.dylib;/usr/local/lib/libtbbmalloc.dylib;/usr/local/lib/libcholmod.dylib;/usr/local/lib/libccolamd.dylib;/usr/local/lib/libcamd.dylib;/usr/local/lib/libcolamd.dylib;/usr/local/lib/libamd.dylib;/System/Library/Frameworks/Accelerate.framework;/System/Library/Frameworks/Accelerate.framework;/System/Library/Frameworks/Accelerate.framework;/usr/local/lib/libsuitesparseconfig.dylib;/usr/local/lib/libcxsparse.dylib;/usr/local/lib/libglog.dylib;okvis_util;okvis_cv;okvis_ceres;okvis_timing;okvis_matcher"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_frontend.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_frontend )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_frontend "/usr/local/lib/libokvis_frontend.a" )

# Import target "okvis_multisensor_processing" for configuration "Debug"
set_property(TARGET okvis_multisensor_processing APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_multisensor_processing PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "okvis_time;okvis_util;okvis_kinematics;okvis_cv;okvis_common;okvis_ceres;okvis_frontend;/usr/local/lib/libglog.dylib"
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libokvis_multisensor_processing.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_multisensor_processing )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_multisensor_processing "/usr/local/lib/libokvis_multisensor_processing.a" )

# Import target "okvis_app_synchronous" for configuration "Debug"
set_property(TARGET okvis_app_synchronous APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(okvis_app_synchronous PROPERTIES
  IMPORTED_LOCATION_DEBUG "/usr/local/bin/okvis_app_synchronous"
  )

list(APPEND _IMPORT_CHECK_TARGETS okvis_app_synchronous )
list(APPEND _IMPORT_CHECK_FILES_FOR_okvis_app_synchronous "/usr/local/bin/okvis_app_synchronous" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
