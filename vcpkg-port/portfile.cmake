vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO AntonSamojlow/cpp-aux
    REF 0.0.1-alpha
    SHA512 e2f98d9f39be3863d1a94c712e0a9220c077ec48c6c6f3b37e0b06e012e7195d6f994bdb06e28119c6aa148c3d9a9d408da7d5efe36c7adebe1812b05501a60d
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
# todo:
# file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/libogg" RENAME copyright)
