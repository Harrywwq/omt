if(NOT EXISTS "/Users/wwq/z3/build/install_manifest.txt")
  message(FATAL_ERROR "Cannot find install manifest: "
          "/Users/wwq/z3/build/install_manifest.txt")
endif()

file(READ "/Users/wwq/z3/build/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach(file ${files})
  set(_full_file_path "$ENV{DESTDIR}${file}")
  message(STATUS "Uninstalling ${_full_file_path}")
  if(IS_SYMLINK "${_full_file_path}" OR EXISTS "${_full_file_path}")
    # We could use ``file(REMOVE ...)`` here but then we wouldn't
    # know if the removal failed.
    execute_process(COMMAND
      "/opt/homebrew/Cellar/cmake/3.30.2/bin/cmake" "-E" "remove" "${_full_file_path}"
      RESULT_VARIABLE rm_retval
    )
    if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"${_full_file_path}\"")
    endif()
  else()
    message(STATUS "File \"${_full_file_path}\" does not exist.")
  endif()
endforeach()
