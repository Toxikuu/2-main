NAME="libaom"
VERS="3.12.0"
DESC="Alliance for Open Media video codec"
CATG=""
UPST="https://aomedia.googlesource.com/aom.git"
DEPS=(
    "yasm"
    "make-ca"
)

SOURCE="https://storage.googleapis.com/aom-releases/libaom-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

# abstraction breaks the build
mkdir aom-build
cd    aom-build

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=1       \
      -D ENABLE_DOCS=no            \
      -G Ninja ..                 ||
die "Cmake failed"

nj
ni

rm -vf "$D"/usr/lib/libaom.a

}
