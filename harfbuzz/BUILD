NAME="harfbuzz"
VERS="11.0.0"
DESC="OpenType text shaping engine"
UPST="https://github.com/harfbuzz/harfbuzz.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | grep -E '[0-9]' | tail -n1"

SOURCE="https://github.com/harfbuzz/harfbuzz/releases/download/$VERS/harfbuzz-$VERS.tar.xz"
EXTRA=()

DEPS=( "freetype" ) # circular (freetype -> harfbuzz -> freetype)

2b() {

with meson ninja

_cfg_opts=(
    -D graphite2=disabled
    -D glib=enabled
    -D gobject=enabled
    -D icu=enabled

    -D tests=disabled
    -D introspection=enabled
    -D doc_tests=disabled
    -D utilities=enabled
)

ms ${_cfg_opts[@]}
nj
ni

cd ..
m32=1

ms ${_cfg_opts[@]}
nj
ni

}
