#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "z3::libz3" for configuration "Debug"
set_property(TARGET z3::libz3 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(z3::libz3 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libz3.4.12.3.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libz3.4.12.dylib"
  )

list(APPEND _cmake_import_check_targets z3::libz3 )
list(APPEND _cmake_import_check_files_for_z3::libz3 "${_IMPORT_PREFIX}/lib/libz3.4.12.3.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
