NAME="xz"
VERS="5.6.3"
DESC="The xz compression algorithm"
UPST="https://github.com/tukaani-project/xz.git"

SOURCE="https://github.com/tukaani-project/xz/releases/download/v$VERS/xz-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --disable-doc
b-make
b-mi

b-make distclean
CC="gcc -m32" b-cfg \
    --host=i686-pc-linux-gnu  \
    --libdir=/usr/lib32

b-make
b-make DESTDIR=$PWD/32DEST install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
