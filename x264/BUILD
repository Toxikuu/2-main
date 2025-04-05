NAME="x264"
VERS="32c3b801191522961102d4bea292cdb61068d0dd"
DESC="Library for encoding video streams into the H.264/MPEG-4 AVC format"
CATG="lib video"
UPST="https://code.videolan.org/videolan/x264.git"
DEPS=(
    "nasm"
)

SOURCE="https://code.videolan.org/videolan/x264/-/archive/master/x264-master.tar.bz2"
EXTRA=()

2b() {

cfg --disable-cli --enable-shared
mk
mi

}