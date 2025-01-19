NAME="xorgproto"
VERS="2024.1"
DESC="Xorg protocol headers"
UPST="https://xorg.freedesktop.org/archive/individual/proto/xorgproto-$VERS.tar.xz"

SOURCE="https://xorg.freedesktop.org/archive/individual/proto/xorgproto-$VERS.tar.xz"
EXTRA=()

DEPS="util-macros"

2b() {

mkdir -pv build
cd        build

CP=.. b-ms
b-ninja
b-ni

mv -v "$D"/usr/share/doc/xorgproto{,-2024.1}

}
