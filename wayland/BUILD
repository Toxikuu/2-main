NAME="wayland"
VERS="1.23.1"
DESC="X successor"
UPST="https://gitlab.freedesktop.org/wayland/wayland.git"

SOURCE="https://gitlab.freedesktop.org/wayland/wayland/-/releases/$VERS/downloads/wayland-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D documentation=false
nj
ni

cd ..
m32=1

ms -D documentation=false
nj
ni

}
