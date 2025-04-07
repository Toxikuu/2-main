NAME="nvim"
VERS="0.11.0"
DESC="Continuation and extension of Vim"
UPST="https://github.com/neovim/neovim.git"
DEPS=(
    "libuv"
    "luajit"
    "git"
    "ninja"
    "cmake"
)

SOURCE="https://github.com/neovim/neovim/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

# build bundled dependencies
cmake -S cmake.deps -B .deps -G Ninja -D CMAKE_BUILD_TYPE=Release
cmake --build .deps

cm
nj
ni

}
#d Add dependencies
