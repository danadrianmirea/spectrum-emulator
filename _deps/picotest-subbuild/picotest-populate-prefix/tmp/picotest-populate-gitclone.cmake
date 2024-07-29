# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitclone-lastrun.txt" AND EXISTS "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitinfo.txt" AND
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitclone-lastrun.txt" IS_NEWER_THAN "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "D:/adi/src/z80/spectrum-emulator/_deps/picotest-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'D:/adi/src/z80/spectrum-emulator/_deps/picotest-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/colinbarry/picotest" "picotest-src"
    WORKING_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/colinbarry/picotest'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe"
          checkout "main" --
  WORKING_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/picotest-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'main'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/picotest-src"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'D:/adi/src/z80/spectrum-emulator/_deps/picotest-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitinfo.txt" "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/picotest-populate-gitclone-lastrun.txt'")
endif()
