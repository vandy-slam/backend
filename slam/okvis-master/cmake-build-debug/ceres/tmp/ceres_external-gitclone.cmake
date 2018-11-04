if("7c57de5080c9f5a4f067e2d20b5f33bad5b1ade6" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitinfo.txt" IS_NEWER_THAN "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external'")
endif()

set(git_options)

# disable cert checking if explicitly told not to do it
set(tls_verify "")
if(NOT "x" STREQUAL "x" AND NOT tls_verify)
  list(APPEND git_options
    -c http.sslVerify=false)
endif()

set(git_clone_options)

set(git_shallow "")
if(git_shallow)
  list(APPEND git_clone_options --depth 1 --no-single-branch)
endif()

set(git_progress "")
if(git_progress)
  list(APPEND git_clone_options --progress)
endif()

set(git_config "")
foreach(config IN LISTS git_config)
  list(APPEND git_clone_options --config ${config})
endforeach()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" ${git_options} clone ${git_clone_options} --origin "origin" "https://ceres-solver.googlesource.com/ceres-solver" "ceres_external"
    WORKING_DIRECTORY "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://ceres-solver.googlesource.com/ceres-solver'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} checkout 7c57de5080c9f5a4f067e2d20b5f33bad5b1ade6 --
  WORKING_DIRECTORY "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '7c57de5080c9f5a4f067e2d20b5f33bad5b1ade6'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} submodule init 
  WORKING_DIRECTORY "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} submodule update --recursive --init 
  WORKING_DIRECTORY "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitinfo.txt"
    "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/Users/liamkelly/vandyhacks/slam/okvis-master/cmake-build-debug/ceres/src/ceres_external-stamp/ceres_external-gitclone-lastrun.txt'")
endif()

