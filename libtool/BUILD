NAME="libtool"
VERS="2.5.4"
DESC="The GNU generic library support script"
UPST="git://git.savannah.gnu.org/libtool.git"

SOURCE="https://ftp.gnu.org/gnu/libtool/libtool-$VERS.tar.xz"
EXTRA=()

2b() {

./configure --prefix=/usr
b-make
b-mi

rm -vf D/usr/lib/libltdl.a

b-make distclean
CC="gcc -m32" ./configure    \
    --host=i686-pc-linux-gnu \
    --prefix=/usr            \
    --libdir=/usr/lib32

b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
