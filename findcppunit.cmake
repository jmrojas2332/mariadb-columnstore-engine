# - Try to find cppunit headers and libraries.
#
# Variables used by this module, they can change the default behaviour and need
# to be set before calling find_package:
#
#  CPPUNIT_ROOT_DIR Set this variable to the root installation of
#                    jemalloc if the module has problems finding
#                    the proper installation path.
#
# Variables defined by this module:
#
#  CPPUNIT_FOUND             System has cppunit libs/headers
#  CPPUNIT_LIBRARIES         The cppunit library/libraries
#  CPPUNIT_INCLUDE_DIR       The location of cppunit headers

find_path(CPPUNIT_ROOT_DIR
    NAMES include/cppunit/Test.h
)

find_library(CPPUNIT_LIBRARIES
    NAMES cppunit
    PATHS ${CPPUNIT_ROOT_DIR}/lib
)

find_path(CPPUNIT_INCLUDE_DIR
    NAMES Test.h 
    HINTS ${CPPUNIT_ROOT_DIR}/include/cppunit
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(cppunit DEFAULT_MSG
    CPPUNIT_LIBRARIES
    CPPUNIT_INCLUDE_DIR
)

mark_as_advanced(
    CPPUNIT_ROOT_DIR
    CPPUNIT_LIBRARIES
    CPPUNIT_INCLUDE_DIR
)
