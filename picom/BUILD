NAME="picom"
VERS="12.5"
DESC="Lightweight X compositor with animation support"
CATG=""
UPST="https://github.com/yshui/picom.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,v,,' | grep -v '[a-Z]' | sort -V | tail -n1"
DEPS=(
    "dbus"
    "libepoxy"
    "xcb-util-image"
    "xcb-util-renderutil"
    "pixman"
    "libconfig"
    "pcre2"
    "libev"
    "uthash"
)

SOURCE="https://github.com/yshui/picom/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

ms
nj
ni

}
