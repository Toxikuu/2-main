NAME="glib-networking"
VERS="2.80.1"
DESC="Network-related gio modules for GLib"
CATG="lib net"
UPST="https://gitlab.gnome.org/GNOME/$NAME.git"
VCMD="git ls-remote --tags --refs $UPST | sed 's@.*/@@' | grep -Ev '[a-Z]|\\.9[0-9]' | tail -n1"
DEPS=(
    "glib"
    "gnutls"
    "gsettings-desktop-schemas"
    "make-ca"
)

SOURCE="https://download.gnome.org/sources/$NAME/${VERS%.*}/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D libproxy=disabled
nj
ni

}
