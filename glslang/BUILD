NAME="glslang"
VERS="15.1.0"
DESC="Frontend and validator for OpenGL and Vulkan shaders"
UPST="https://github.com/KhronosGroup/glslang.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v [a-Z] | sort -V | tail -n1"

SOURCE="https://github.com/KhronosGroup/glslang/archive/$VERS/glslang-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    -D ALLOW_EXTERNAL_SPIRV_TOOLS=ON
    -D GLSLANG_TESTS=OFF
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
