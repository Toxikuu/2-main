NAME="libclc"
VERS="19.1.7"
DESC="Library requirements of the OpenCL C programming language"
CATG="dev"
UPST="https://github.com/llvm/llvm-project.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'init|rc' | sort -V | cut -d- -f2 | tail -n1"
DEPS=(
    "llvm"
    "spirv-llvm-translator"
)

SOURCE="https://github.com/llvm/llvm-project/releases/download/llvmorg-$VERS/libclc-$VERS.src.tar.xz"
EXTRA=()

2b() {

cm
nj
ni

}
