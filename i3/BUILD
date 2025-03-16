NAME="i3"
VERS="4.24"
DESC="Easy-to-use tiling window manager"
CATG="wm"
UPST="https://github.com/i3/i3.git"
DEPS=(
    "startup-notification"
    "xcb-util-keysyms"
    "xcb-util-cursor"
    "xcb-util-xrm"
    "xcb-util-wm"
    "libxkbcommon"
    "libev"
    "pango"
    "yajl"
)

SOURCE="https://github.com/i3/i3/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

ms -D mans=false -D docs=false
nj
ni

}
