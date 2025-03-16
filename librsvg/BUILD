NAME="librsvg"
VERS="2.59.2"
DESC="Rust library for manipulating and viewing SVG images"
CATG="lib"
UPST="https://github.com/GNOME/librsvg.git"
DEPS=(
    "cairo"
    "cargo-c"
    "gdk-pixbuf"
    "pango"
    "rust"
    "glib"
    "vala"
    "make-ca"
)

SOURCE="https://download.gnome.org/sources/librsvg/${VERS%.*}/librsvg-$VERS.tar.xz"
EXTRA=()

2b() {

with rust meson ninja

ms
nj
ni

}
