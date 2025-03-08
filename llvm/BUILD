# WARNING: This package currently does not build
NAME="llvm"
VERS="20.1.0"
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

sed -e "/LLVM_COMMON_CMAKE_UTILS/s@../cmake@cmake-$VERS.src@" \
    -e '/PROJ_DIR/s@\.\./@@' \
    -i CMakeLists.txt

# sed "/LLVM_THIRD_PARTY_DIR/s@../third-party@third-party-$VERS.src@" \
#     -i cmake/modules/HandleLLVMOptions.cmake

tar -xf "$SRC/clang-$VERS.src.tar.xz"
mv -v clang-$VERS.src clang
sleep 1

tar -xf "$SRC/compiler-rt-$VERS.src.tar.xz" -C projects
mv -v projects/compiler-rt-$VERS.src projects/compiler-rt

grep -rl '#!.*python' | xargs sed -i '1s/python$/python3/'

# install filecheck (needed by some package test suites)
sed 's/utility/tool/' -i utils/FileCheck/CMakeLists.txt

# The AMDGPU target is included in this build as well
_cfg_opts=(
    # shared libraries
    -D BUILD_SHARED_LIBS=OFF
    -D LLVM_BUILD_LLVM_DYLIB=ON
    -D LLVM_LINK_LLVM_DYLIB=ON

    # tests
    -D LLVM_INCLUDE_BENCHMARKS=OFF
    -D LLVM_INCLUDE_TESTS=OFF
    -D LLVM_BUILD_TESTS=OFF
    -D LLVM_INSTALL_GTEST=OFF

    # docs
    -D LLVM_BUILD_DOCS=OFF
    -D LLVM_ENABLE_OCAMLDOC=OFF
    -D LLVM_ENABLE_SPHINX=OFF
    -D LLVM_ENABLE_DOXYGEN=OFF

    # general llvm settings
    -D LLVM_TARGETS_TO_BUILD="" # hack stolen from https://gitweb.gentoo.org/repo/gentoo.git/tree/llvm-core/llvm/llvm-20.1.0.ebuild
    -D LLVM_EXPERIMENTAL_TARGETS_TO_BUILD="X86;host;AMDGPU"
    -D LLVM_BINUTILS_INCDIR=/usr/include
		-D LLVM_APPEND_VC_REV=OFF

    # features
    -D LLVM_ENABLE_FFI=ON
    -D LLVM_ENABLE_RTTI=ON
    -D LLVM_ENABLE_PROJECTS="clang"
		-D OCAMLFIND=NO

    # clang
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

_cfg_opts+=(
    -D CMAKE_C_FLAGS:STRING=-m32
    -D CMAKE_CXX_FLAGS:STRING=-m32
    -D LLVM_TARGET_ARCH:STRING=i686
    -D LLVM_LIBDIR_SUFFIX=32
    -D LLVM_DEFAULT_TARGET_TRIPLE="i686-pc-linux-gnu"
    -D LLVM_HOST_TRIPLE="x86_64-pc-linux-gnu"
)

CC=gcc CXX=g++ \
cm ${_cfg_opts[@]}
nj
ni

mkdir -pv "$D/etc/clang"
for i in clang clang++; do
    echo -fstack-protector-strong > "$D/etc/clang/$i.cfg"
done

}
