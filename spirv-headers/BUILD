NAME="spirv-headers"
VERS="1.4.309.0"
DESC="Machine-readable files for the SPIR-V Registry"
UPST="https://github.com/KhronosGroup/SPIRV-Headers.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | tail -n1 | cut -d- -f3"

SOURCE="https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-$VERS/SPIRV-Headers-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm
nj
ni

}