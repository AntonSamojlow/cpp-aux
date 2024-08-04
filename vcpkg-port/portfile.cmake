vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO AntonSamojlow/cpp-aux
    REF 0.0.1-alpha
    SHA512 faa453d3dfda35074177ff4fe39c8358c076d085ba56a889110bc1f70db1a30aaabfdfac589f62a8260d362648d66537c865aedf2db2f6e3f2f31ebf6a955e6b
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTS=OFF
)
# vcpkg_cmake_install()
# todo:
# file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/libogg" RENAME copyright)
