NAME="expat"
VERS="2.6.4"
DESC="XML parsing library"
UPST="https://github.com/libexpat/libexpat.git"

SOURCE="https://prdownloads.sourceforge.net/expat/expat-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

sed -e "/^am__append_1/ s/doc//" -i Makefile
b-make clean

CC="gcc -m32" b-cfg \
    --libdir=/usr/lib32 \
    --host=i686-pc-linux-gnu

b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
