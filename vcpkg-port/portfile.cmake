vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO AntonSamojlow/cpp-aux
    REF 0.0.1-alpha
    SHA512 d0ccc3de80ae446b0357db3b775ee654f983825bb076053b777e5e731d8894a33b421f8e5a797df1cb9af14fd3ad173d195560f4df17e230535d7f948be55642
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
# todo:
# file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/libogg" RENAME copyright)
