NAME="spirv-tools"
VERS="1.4.309.0"
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

with cmake ninja

cm ${_cfg_opts[@]}
nj
ni

cd ..
m32=1

cm ${_cfg_opts[@]}
nj
ni

}