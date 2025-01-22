NAME="libxcb"
VERS="1.17.0"
DESC="X11 client-side library"
UPST="https://gitlab.freedesktop.org/xorg/lib/libxcb.git"

SOURCE="https://xorg.freedesktop.org/archive/individual/lib/libxcb-$VERS.tar.xz"
EXTRA=()

DEPS=("libxau xcb-proto libxdmcp")

2b() {

b-cfg $XORG_CONFIG --without-doxygen
b-make
b-mi

b-make distclean

b-32cfg $XORG_CONFIG --without-doxygen
b-make
b-32mi

}
