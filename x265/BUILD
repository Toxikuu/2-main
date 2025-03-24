NAME="x265"
VERS="4.1"
DESC="Library for envoding video streams into the H.265/HEVC format"
CATG="lib video"
UPST="https://bitbucket.org/multicoreware/x265_git.git"
DEPS=(
    "cmake"
    "nasm"
)

SOURCE="https://bitbucket.org/multicoreware/x265_git/downloads/x265_$VERS.tar.gz"
EXTRA=()

2b() {

mkdir bld
cd    bld

cmake \
    -D CMAKE_INSTALL_PREFIX=/usr    \
    -D CMAKE_BUILD_TYPE=Release     \
    -D CMAKE_SKIP_INSTALL_RPATH=ON  \
    -D BUILD_SHARED_LIBS=ON         \
    -D GIT_ARCHETYPE=1              \
    -W no-dev ../source
mk
mi

rm -vf "$D"/usr/lib/libx265.a

}
