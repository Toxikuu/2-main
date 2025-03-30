NAME="libsoup2"
VERS="2.74.3"
DESC="HTTP client/server library for GNOME"
CATG="lib net"
UPST="https://gitlab.gnome.org/GNOME/libsoup.git"
VCMD="git ls-remote --tags --refs $UPST | sed 's@.*/@@' | grep -Ev '[a-Z]|\\.99\\.' | grep '^2' | tail -n1"
DEPS=(
    "glib-networking"
    "libpsl"
    "libxml2"
    "sqlite"
    "glib"
    "o^vala" # for gnome; this build assumes it's not installed
)

SOURCE="https://download.gnome.org/sources/libsoup/${VERS%.*}/libsoup-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    -D vapi=disabled
    -D gssapi=disabled
    -D sysprof=disabled
)

ms ${_cfg_opts[@]}
nj
ni

}
