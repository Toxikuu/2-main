NAME="libstemmer"
VERS="2.2.0"
DESC="Stemming algorithm processing language"
CATG="lib"
UPST="https://github.com/snowballstem/snowball.git"
DEPS=()

SOURCE="https://github.com/snowballstem/snowball/archive/refs/tags/v$VERS.tar.gz"
EXTRA=(
    "https://gitlab.archlinux.org/archlinux/packaging/packages/snowball/-/raw/main/dynamiclib.diff"
)

2b() {

tpatch "$SRC"/dynamiclib.diff

mk

install -vDm644 include/libstemmer.h -t "$D"/usr/include/
install -vDm644 libstemmer.so.0.0.0  -t "$D"/usr/lib/

ln -sv libstemmer.so.0.0.0 "$D"/usr/lib/libstemmer.so.0
ln -sv libstemmer.so.0     "$D"/usr/lib/libstemmer.so

}
