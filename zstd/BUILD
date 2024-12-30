NAME="zstd"
VERS="1.5.6"
DESC="The zstandard compression algorithm"
UPST="https://github.com/facebook/zstd.git"

SOURCE="https://github.com/facebook/zstd/releases/download/v$VERS/zstd-$VERS.tar.gz"
EXTRA=()

2b() {

b-make prefix=/usr
b-make prefix=/usr DESTDIR=$PWD/D

mkdir -pv D/usr/lib32
b-make clean
CC="gcc -m32" b-make prefix=/usr
b-make prefix=/usr DESTDIR=$PWD/32DEST install
cp -Rv 32DEST/usr/lib/* D/usr/lib32/
sed -e "/^libdir/s/lib$/lib32/" -i /usr/lib32/pkgconfig/libzstd.pc

rm -vf D/usr/lib{,32}/libzstd.a

}
