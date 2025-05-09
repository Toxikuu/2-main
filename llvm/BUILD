NAME="llvm"
VERS="20.1.2"
DESC="A collection of modular and reusable compiler and toolchain technologies"
UPST="https://github.com/llvm/llvm-project.git"
VCMD="git ls-remote --tags --refs '$UPST' | cut -d- -f2- | grep -v [a-Z] | sort -V | tail -n1"

LINK_COMMON="https://github.com/llvm/llvm-project/releases/download/llvmorg-$VERS"
SOURCE="$LINK_COMMON/llvm-$VERS.src.tar.xz"
EXTRA=(
    "$LINK_COMMON/cmake-$VERS.src.tar.xz"
    "$LINK_COMMON/third-party-$VERS.src.tar.xz"
    "$LINK_COMMON/clang-$VERS.src.tar.xz"
    "$LINK_COMMON/compiler-rt-$VERS.src.tar.xz"
)

2b() {

with cmake ninja

tar -xf "$SRC/cmake-$VERS.src.tar.xz"
tar -xf "$SRC/third-party-$VERS.src.tar.xz"

sed "/LLVM_COMMON_CMAKE_UTILS/s@../cmake@cmake-$VERS.src@" \
    -i CMakeLists.txt &&
sed "/LLVM_THIRD_PARTY_DIR/s@../third-party@third-party-$VERS.src@" \
    -i cmake/modules/HandleLLVMOptions.cmake

tar -xf "$SRC/clang-$VERS.src.tar.xz" -C tools
mv -v tools/clang-$VERS.src tools/clang

tar -xf "$SRC/compiler-rt-$VERS.src.tar.xz" -C projects
mv -v projects/compiler-rt-$VERS.src projects/compiler-rt

grep -rl '#!.*python' | xargs sed -i '1s/python$/python3/'

# install filecheck (needed by some package test suites)
sed 's/utility/tool/' -i utils/FileCheck/CMakeLists.txt

_cfg_opts=(
    -D BUILD_SHARED_LIBS=OFF # override abstraction
    -D LLVM_BUILD_LLVM_DYLIB=ON
    -D LLVM_LINK_LLVM_DYLIB=ON

    -D LLVM_ENABLE_FFI=ON
    -D LLVM_ENABLE_RTTI=ON

    -D LLVM_TARGETS_TO_BUILD="X86;host;AMDGPU"
    -D LLVM_BINUTILS_INCDIR=/usr/include
    -D LLVM_INCLUDE_BENCHMARKS=OFF

    -D CLANG_DEFAULT_PIE_ON_LINUX=ON
    -D CLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang
)

CC=gcc CXX=g++ \
cm ${_cfg_opts[@]}
nj
ni

cp bin/FileCheck "$D"/usr/bin
cd ..
m32=1

CC=gcc CXX=g++ \
cm ${_cfg_opts[@]}                                    \
    -D CMAKE_C_FLAGS:STRING=-m32                      \
    -D CMAKE_CXX_FLAGS:STRING=-m32                    \
    -D LLVM_TARGET_ARCH:STRING=i686                   \
    -D LLVM_LIBDIR_SUFFIX=32                          \
    -D LLVM_DEFAULT_TARGET_TRIPLE="i686-pc-linux-gnu" \
    -D LLVM_HOST_TRIPLE="x86_64-pc-linux-gnu"
nj
ni

mkdir -pv "$D/etc/clang"
for i in clang clang++; do
    echo -fstack-protector-strong > "$D/etc/clang/$i.cfg"
done

}