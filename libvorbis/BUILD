NAME="libvorbis"
VERS="1.3.7"
DESC="Reference implementation of the Ogg Vorbis audio format"
UPST="https://github.com/xiph/vorbis.git"

SOURCE="https://downloads.xiph.org/releases/vorbis/libvorbis-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi
install -vDm644 doc/Vorbis* "$D"/usr/share/doc/libvorbis-$VERS

mk distclean
m32=1

cfg
mk
mi

}
