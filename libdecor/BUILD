NAME="libdecor"
VERS="0.2.2"
DESC="Wayland client-side decorations library"
CATG="lib"
UPST="https://gitlab.freedesktop.org/libdecor/libdecor.git"
DEPS=(
    "wayland"
    "pango"
    "dbus"
    "cmake"
    "ninja"
    "meson"
    "wayland-protocols"
)

SOURCE="https://gitlab.freedesktop.org/libdecor/libdecor/-/archive/$VERS/libdecor-$VERS.tar.bz2"
EXTRA=()

2b() {

with meson

ms -D demo=false
meson compile
meson install --destdir "$D"

}
