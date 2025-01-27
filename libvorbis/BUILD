NAME="libvorbis"
VERS="1.3.7"
DESC="Reference implementation of the Ogg Vorbis audio format"

SOURCE="https://downloads.xiph.org/releases/vorbis/libvorbis-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi
install -vDm644 doc/Vorbis* "$D"/usr/share/doc/libvorbis-$VERS

b-make distclean
b-32cfg
b-make
b-32mi

}
