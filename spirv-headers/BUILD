NAME="spirv-headers"
VERS="1.4.304.1"
DESC="Machine-readable files for the SPIR-V Registry"
UPST="https://github.com/KhronosGroup/SPIRV-Headers.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | tail -n1 | cut -d- -f3"

SOURCE="https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-$VERS/SPIRV-Headers-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

b-cmake
b-ninja
b-ni

}
