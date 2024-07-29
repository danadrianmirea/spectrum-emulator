# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-src"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-build"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/tmp"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src"
  "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/picotest-subbuild/picotest-populate-prefix/src/picotest-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
