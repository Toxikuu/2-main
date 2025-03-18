NAME="libwebp"
VERS="1.5.0"
DESC="Library and utilities to handle WebP images"
CATG="lib"
UPST="https://chromium.googlesource.com/webm/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | cut -dv -f2 | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "libjpeg-turbo"
    "libpng"
    "libtiff"
    "sdl2"
)

SOURCE="https://storage.googleapis.com/downloads.webmproject.org/releases/webp/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    --enable-libwebpmux
    --enable-libwebpdemux
    --enable-libwebpdecoder
    --enable-libwebpextras
    --enable-swap-16bit-csp
)

cfg ${_cfg_opts[@]}
mk
mi

}
