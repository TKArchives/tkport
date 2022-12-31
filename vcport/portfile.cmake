vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/TKArchives/tkport/releases/download/0.1.0/tkport-0.1.0.zip"
    FILENAME "tkport-0.1.0.zip"
    SHA512 f1b94c6b9e2e10f311391fb63efbb5a0de2c60ced1cd2a1a1a17aa422de8d48b7658390926467c245250c59a004b314493e91ff80a3a35ac3a6dc23e6df210ce
)

vcpkg_extract_source_archive_ex(
    OUT_SOURCE_PATH SOURCE_PATH
    ARCHIVE "${ARCHIVE}"
    NO_REMOVE_ONE_LEVEL
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/tkport)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
