NAME="libunwind"
VERS="1.8.1"
DESC="C API to determine the call-chain of a program"
UPST="https://github.com/libunwind/libunwind.git"

SOURCE="https://github.com/libunwind/libunwind/releases/download/v$VERS/libunwind-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

mk clean
m32=1

CC="gcc -m32" CXX="g++ -m32"                     \
CFLAGS="-O2" CXXFLAGS="-O2" \
PKG_CONFIG_PATH=/usr/lib32/pkgconfig             \
./configure --prefix=/usr                        \
            --libdir=/usr/lib32                  \
            --host=i686-pc-linux-gnu             \
            --disable-static
mk
mi

cp -v "$BLD"/32DEST/usr/include/libunwind-x86.h "$D"/usr/include/

}
