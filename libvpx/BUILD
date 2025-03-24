NAME="libvpx"
VERS="1.15.0"
DESC="VP8/9 video codec"
CATG="lib video"
UPST="https://github.com/webmproject/libvpx.git"
DEPS=(
    "yasm"
    "which"
)

SOURCE="https://github.com/webmproject/libvpx/archive/v$VERS/libvpx-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i 's/cp -p/cp/' build/make/Makefile

cfg --enable-shared
mk
mi

}
