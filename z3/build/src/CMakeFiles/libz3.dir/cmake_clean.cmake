file(REMOVE_RECURSE
  "../.4.12"
  "../libz3.4.12.3.0.dylib"
  "../libz3.4.12.dylib"
  "../libz3.dylib"
  "../libz3.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libz3.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
