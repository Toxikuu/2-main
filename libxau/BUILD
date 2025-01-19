NAME="libxau"
VERS="1.0.12"
DESC="The X Authorization Protocol"
UPST="https://gitlab.freedesktop.org/xorg/lib/libxau.git"

SOURCE="https://www.x.org/pub/individual/lib/libXau-$VERS.tar.xz"
EXTRA=()

DEPS="xorgproto"

2b() {

b-cfg $XORG_CONFIG
b-make
b-mi

b-make distclean
b-32cfg $XORG_CONFIG
b-make
b-32mi

}
