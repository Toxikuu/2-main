NAME="gtk3"
VERS="3.24.49"
DESC="Multi-platform GUI toolkit"
CATG="gui lib"
UPST="https://gitlab.gnome.org/GNOME/gtk.git"
# search for latest versions of gtk3 that aren't 3.{8,9}x
VCMD="git ls-remote --refs --tags '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]|^3\\.[8-9][0-9]|^4|^2' | sort -V | tail -n1"
DEPS=(
    "glib"
    "at-spi2-core"
    "gdk-pixbuf"
    "libepoxy"
    "pango"
    "wayland"
    "wayland-protocols"
    "libxkbcommon"
)

SOURCE="https://download.gnome.org/sources/gtk/${VERS%.*}/gtk-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D man=false -D broadway_backend=true
nj
ni

}

2z() {

gtk-query-immodules-3.0 --update-cache
glib-compile-schemas /usr/share/glib-2.0/schemas

}
