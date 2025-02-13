NAME="spirv-tools"
VERS="1.4.304.1"
DESC="Libraries and utilities for processing SPIR-V modules"
UPST="https://github.com/KhronosGroup/SPIRV-Headers.git"
VCMD="git ls-remote --tags '$UPST' | sed 's@.*/@@' | sort -V | tail -n1 | cut  -d- -f3"
DEPS=(
    cmake
    spirv-headers
)

SOURCE="https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-$VERS/SPIRV-Tools-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    -D SPIRV_WERROR=OFF
    -D SPIRV_TOOLS_BUILD_STATIC=OFF
    -D SPIRV-Headers_SOURCE_DIR=/usr
)

mkdir -pv build
cd        build

CP=.. b-cmake ${_cfg_opts[@]}
b-ninja
b-ni

rm -rf ./*
CP=.. b-32cmake ${_cfg_opts[@]}
b-ninja
b-32ni

}
