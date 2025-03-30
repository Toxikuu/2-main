NAME="libsoup3"
VERS="3.6.5"
DESC="HTTP client/server library for GNOME"
CATG="lib net"
UPST="https://gitlab.gnome.org/GNOME/libsoup.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "glib-networking"
    "libpsl"
    "libxml2"
    "nghttp2"
    "sqlite"
    "glib"
)

SOURCE="https://download.gnome.org/sources/libsoup/${VERS%.*}/libsoup-$VERS.tar.xz"
EXTRA=()

2b() {

ms  --wrap-mode=nofallback
nj
ni

}
