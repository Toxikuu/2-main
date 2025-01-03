NAME="libffi"
VERS="3.4.6"
DESC="Foreign Function Interface library"
UPST="https://github.com/libffi/libffi.git"

SOURCE="https://github.com/libffi/libffi/releases/download/v$VERS/libffi-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --with-gcc-arch=native

b-make
b-mi

b-make distclean

CC="gcc -m32" CXX="g++ -m32" \
b-cfg \
    --host=i686-pc-linux-gnu \
    --libdir=/usr/lib32      \
    --with-gcc-arch=i686

b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
