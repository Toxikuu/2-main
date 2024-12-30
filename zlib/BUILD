NAME="zlib"
VERS="1.3.1"
DESC="Compression library used by a lot of packages"
UPST="https://github.com/madler/zlib.git"

SOURCE="https://zlib.net/fossils/zlib-$VERS.tar.gz"
EXTRA=()

2b() {

./configure --prefix=/usr
b-make
b-mi

make distclean

CFLAGS+=" -m32" CXXFLAGS+=" -m32" \
./configure --prefix=/usr --libdir=/usr/lib32
b-make

make DESTDIR=$PWD/32DEST install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

rm -vf D/usr/lib/libz.a
rm -vf /usr/lib32/libz.a

}
