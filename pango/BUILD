NAME="pango"
VERS="1.56.3"
DESC="Library for text layout and rendering"
CATG="lib"
UPST="https://github.com/GNOME/pango.git"
VCMD="git ls-remote --tags --refs $UPST | sed 's@.*/@@' | grep -Ev '[a-Z]|-|[0-9]\\.9' | tail -n1"
DEPS=(
    "cairo"
    "fribidi"
    "fontconfig"
    "glib"
    "libx11"
    "libxrender"
    "libxft"
)

SOURCE="https://github.com/GNOME/pango/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

ms --wrap-mode=nofallback -D introspection=enabled
nj
ni

}