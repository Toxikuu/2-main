NAME="harfbuzz"
VERS="10.2.0"
DESC="OpenType text shaping engine"
UPST="https://github.com/harfbuzz/harfbuzz.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | grep -E '[0-9]' | tail -n1"

SOURCE="https://github.com/harfbuzz/harfbuzz/releases/download/$VERS/harfbuzz-$VERS.tar.xz"
EXTRA=()

DEPS=( "freetype" ) # circular (freetype -> harfbuzz -> freetype)

2b() {

mkdir -pv build
cd        build

CP=.. b-ms -D graphite2=disabled
b-ninja
b-ni

rm -rf {,.}*

CP=.. b-32ms              \
    -D glib=disabled      \
    -D cairo=disabled     \
    -D gobject=disabled   \
    -D graphite2=disabled
b-ninja
b-32ni

}
