NAME="at-spi2-core"
VERS="2.56.1"
DESC="Comprehensive accessibility framework for GNOME's Assistive Technologies"
CATG="lib"
UPST="https://gitlab.gnome.org/GNOME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "dbus"
    "glib"
    "gsettings-desktop-schemas"
    "libx11"
    "libxi"
    "libxtst"
    "xprop"
)

SOURCE="https://download.gnome.org/sources/$NAME/${VERS%.*}/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D gtk2_atk_adaptor=false -D systemd_user_dir=/tmp
nj
ni

rm -vf "$D"/tmp/at-spi-dbus-bus.service

}