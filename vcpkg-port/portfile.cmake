vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO AntonSamojlow/cpp-aux
    REF 0.0.1
    SHA512 0
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
# todo:
# file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/libogg" RENAME copyright)
