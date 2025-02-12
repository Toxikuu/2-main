NAME="wayland"
VERS="1.23.1"
DESC="X successor"
UPST="https://gitlab.freedesktop.org/wayland/wayland.git"

SOURCE="https://gitlab.freedesktop.org/wayland/wayland/-/releases/$VERS/downloads/wayland-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-ms -D documentation=false
b-ninja
b-ni

rm -rf ./*
CP=.. b-32ms -D documentation=false
b-ninja
b-32ni

}
