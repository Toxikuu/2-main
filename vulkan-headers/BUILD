NAME="vulkan-headers"
VERS="1.4.304"
DESC="Header files needed to build and link applications against the Vulkan API"
UPST="https://github.com/KhronosGroup/Vulkan-Headers.git"
DEPS=(
    cmake
)

SOURCE="https://github.com/KhronosGroup/Vulkan-Headers/archive/v$VERS/Vulkan-Headers-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-cmake
b-ninja
b-ni

}
