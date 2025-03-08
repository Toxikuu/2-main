NAME="vulkan-headers"
VERS="1.4.310"
DESC="Header files needed to build and link applications against the Vulkan API"
UPST="https://github.com/KhronosGroup/Vulkan-Headers.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]' | tail -n1"
DEPS=(
    cmake
)

SOURCE="https://github.com/KhronosGroup/Vulkan-Headers/archive/v$VERS/Vulkan-Headers-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm
nj
ni

}