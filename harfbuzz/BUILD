NAME="harfbuzz"
VERS="11.0.1"
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
    -D introspection=enabled
    -D utilities=enabled

    -D tests=disabled
    -D doc_tests=false
)

ms ${_cfg_opts[@]}
nj
ni

cd ..
m32=1

ms ${_cfg_opts[@]}        \
    -D glib=disabled      \
    -D gobject=disabled   \
    -D cairo=disabled     \
    -D utilities=disabled \
    -D introspection=disabled
    
nj
ni

}