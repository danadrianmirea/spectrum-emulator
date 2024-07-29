# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-src"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-build"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/tmp"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/src/z80-populate-stamp"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/src"
  "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/src/z80-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/src/z80-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/adi/src/z80/spectrum-emulator/_deps/z80-subbuild/z80-populate-prefix/src/z80-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
