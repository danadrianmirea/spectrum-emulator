# CMake generated Testfile for 
# Source directory: D:/adi/src/z80/spectrum-emulator/src
# Build directory: D:/adi/src/z80/spectrum-emulator/bin
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(Spectrum.test "./Spectrum.test")
  set_tests_properties(Spectrum.test PROPERTIES  _BACKTRACE_TRIPLES "D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;27;add_test;D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(Spectrum.test "./Spectrum.test")
  set_tests_properties(Spectrum.test PROPERTIES  _BACKTRACE_TRIPLES "D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;27;add_test;D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(Spectrum.test "./Spectrum.test")
  set_tests_properties(Spectrum.test PROPERTIES  _BACKTRACE_TRIPLES "D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;27;add_test;D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(Spectrum.test "./Spectrum.test")
  set_tests_properties(Spectrum.test PROPERTIES  _BACKTRACE_TRIPLES "D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;27;add_test;D:/adi/src/z80/spectrum-emulator/src/CMakeLists.txt;0;")
else()
  add_test(Spectrum.test NOT_AVAILABLE)
endif()
