NAME="flac"
VERS="1.4.3"
DESC="Lossless audio codec"
UPST="https://github.com/xiph/flac.git"

SOURCE="https://downloads.xiph.org/releases/flac/flac-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --disable-thorough-tests \
      --docdir=/usr/share/doc/flac-$VERS
b-make
b-mi

b-make distclean

b-32cfg --disable-thorough-tests
b-make
b-32mi

}
