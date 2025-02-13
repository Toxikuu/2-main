NAME="vulkan-loader"
VERS="1.4.304"
DESC="Library providing the Vulkan API and core support for graphics drivers for Vulkan"
UPST="https://github.com/KhronosGroup/Vulkan-Loader.git"

SOURCE="https://github.com/KhronosGroup/Vulkan-Loader/archive/v$VERS/Vulkan-Loader-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

b-cmake
b-ninja
b-ni

rm -rf ./*

ASFLAGS=--32 CFLAGS=-m32 CXXFLAGS=-m32 \
b-32cmake
b-ninja
b-32ni

}
