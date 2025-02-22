NAME="spirv-llvm-translator"
VERS="19.1.4"
DESC="Bi-directional translation between SPIR-V and LLVM IR"
CATG="dev"
UPST="https://github.com/KhronosGroup/SPIRV-LLVM-Translator.git"
DEPS=(
    "cmake"
    "libxml2"
    "llvm"
    "spirv-headers"
    "spirv-tools"
)

SOURCE="https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v$VERS/SPIRV-LLVM-Translator-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr
nj
ni

cd ..
m32=1

cm -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr
nj
ni

}
