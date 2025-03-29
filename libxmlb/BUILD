NAME="libxmlb"
VERS="0.3.22"
DESC="Library for binary XML blobs"
CATG="lib"
UPST="https://github.com/hughsie/libxmlb.git"
DEPS=(
    "glib"
    "libstemmer"
)

SOURCE="https://github.com/hughsie/libxmlb/releases/download/$VERS/libxmlb-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D gtkdoc=false -D stemmer=true
nj
ni

}
