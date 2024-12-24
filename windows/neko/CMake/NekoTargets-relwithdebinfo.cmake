#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nekovm" for configuration "RelWithDebInfo"
set_property(TARGET nekovm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(nekovm PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./neko.exe"
  )

list(APPEND _cmake_import_check_targets nekovm )
list(APPEND _cmake_import_check_files_for_nekovm "${_IMPORT_PREFIX}/./neko.exe" )

# Import target "nekoc" for configuration "RelWithDebInfo"
set_property(TARGET nekoc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(nekoc PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./nekoc.exe"
  )

list(APPEND _cmake_import_check_targets nekoc )
list(APPEND _cmake_import_check_files_for_nekoc "${_IMPORT_PREFIX}/./nekoc.exe" )

# Import target "nekotools" for configuration "RelWithDebInfo"
set_property(TARGET nekotools APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(nekotools PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./nekotools.exe"
  )

list(APPEND _cmake_import_check_targets nekotools )
list(APPEND _cmake_import_check_files_for_nekotools "${_IMPORT_PREFIX}/./nekotools.exe" )

# Import target "libneko" for configuration "RelWithDebInfo"
set_property(TARGET libneko APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(libneko PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/./neko.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./neko.dll"
  )

list(APPEND _cmake_import_check_targets libneko )
list(APPEND _cmake_import_check_files_for_libneko "${_IMPORT_PREFIX}/./neko.lib" "${_IMPORT_PREFIX}/./neko.dll" )

# Import target "nekoml" for configuration "RelWithDebInfo"
set_property(TARGET nekoml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(nekoml PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./nekoml.exe"
  )

list(APPEND _cmake_import_check_targets nekoml )
list(APPEND _cmake_import_check_files_for_nekoml "${_IMPORT_PREFIX}/./nekoml.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
