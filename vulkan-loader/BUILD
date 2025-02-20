NAME="vulkan-loader"
VERS="1.4.307"
DESC="Library providing the Vulkan API and core support for graphics drivers for Vulkan"
UPST="https://github.com/KhronosGroup/Vulkan-Loader.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]' | tail -n1"

SOURCE="https://github.com/KhronosGroup/Vulkan-Loader/archive/v$VERS/Vulkan-Loader-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm
nj
ni

cd ..
m32=1

ASFLAGS=--32 \
cm
nj
ni

}
