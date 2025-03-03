NAME="harfbuzz"
VERS="10.4.0"
DESC="OpenType text shaping engine"
UPST="https://github.com/harfbuzz/harfbuzz.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | grep -E '[0-9]' | tail -n1"

SOURCE="https://github.com/harfbuzz/harfbuzz/releases/download/$VERS/harfbuzz-$VERS.tar.xz"
EXTRA=()

DEPS=( "freetype" ) # circular (freetype -> harfbuzz -> freetype)

2b() {

with meson ninja

ms  -D graphite2=disabled
nj
ni

cd ..
m32=1

ms  -D glib=disabled      \
    -D cairo=disabled     \
    -D gobject=disabled   \
    -D graphite2=disabled
nj
ni

}