NAME="cairo"
VERS="1.18.4"
DESC="2D graphics library supporting multiple output devices"
CATG=""
UPST="https://gitlab.freedesktop.org/cairo/cairo.git"
DEPS=(
    "libpng"
    "pixman"
    "fontconfig"
    "glib"
    "libx11"
    "libxcb"
    "libxext"
    "libxrender"
)

SOURCE="https://www.cairographics.org/releases/cairo-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D xlib-xcb=enabled
nj
ni

}
#d changed source because of freedesktop's migration
