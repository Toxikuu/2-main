NAME="flac"
VERS="1.4.3"
DESC="Lossless audio codec"
UPST="https://github.com/xiph/flac.git"

SOURCE="https://downloads.xiph.org/releases/flac/flac-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. DS=1 b-cfg --disable-thorough-tests \
    --docdir=/usr/share/doc/flac-$VERS
b-make
b-mi

rm -rf {,.}*

CP=.. DS=1 b-32cfg --disable-thorough-tests
b-make
b-32mi

}
