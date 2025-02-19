NAME="cmake"
VERS="3.31.5"
DESC="Build system succeeding configure scripts"
UPST="https://gitlab.kitware.com/cmake/cmake.git"
DEPS=(
    "curl"
    "libarchive"
    "libuv"
    "nghttp2"
)

SOURCE="https://cmake.org/files/v${VERS%.*}/cmake-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i '/"lib64"/s/64//' Modules/GNUInstallDirs.cmake

./bootstrap --prefix=/usr          \
            --parallel=$(nproc)    \
            --system-libs          \
            --mandir=/share/man    \
            --no-system-jsoncpp    \
            --no-system-cppdap     \
            --no-system-librhash   \
            --docdir=/share/doc/cmake-$VERS
mk
mi

}