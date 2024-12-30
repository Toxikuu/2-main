NAME="lz4"
VERS="1.10.0"
DESC="The lz4 compression algorithm."
UPST="https://github.com/lz4/lz4.git"

SOURCE="https://github.com/lz4/lz4/releases/download/v$VERS/lz4-$VERS.tar.gz"
EXTRA=()

2b() {

b-make BUILD_STATIC=no PREFIX=/usr
b-make BUILD_STATIC=no PREFIX=/usr DESTDIR=$(pwd)/D install

b-make clean
CC="gcc -m32" b-make      \
    BUILD_STATIC=no       \
    PREFIX=/usr           \
    LIBDIR=/usr/lib32     \
    DESTDIR=$(pwd)/32DEST \
    install

mkdir -pv D/usr/lib32
cp -a 32DEST/usr/lib32/* D/usr/lib32

}
