NAME="libaom"
VERS="3.12.0"
DESC="Alliance for Open Media video codec"
CATG=""
UPST="https://aomedia.googlesource.com/aom.git"
DEPS=(
    "yasm"
)

SOURCE="https://storage.googleapis.com/aom-releases/libaom-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm \
    -D ENABLE_DOCS=no \
    -D ENABLE_NASM=no \
    -D BUILD_SHARED_LIBS=1

nj
ni

rm -vf "$D"/usr/lib/libaom.a

}
