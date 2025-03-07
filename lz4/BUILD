NAME="lz4"
VERS="1.10.0"
CATG="core"
DESC="The lz4 compression algorithm."
UPST="https://github.com/lz4/lz4.git"

SOURCE="https://github.com/lz4/lz4/releases/download/v$VERS/lz4-$VERS.tar.gz"
EXTRA=()

2b() {

mk BUILD_STATIC=no PREFIX=/usr
mi BUILD_STATIC=no PREFIX=/usr

m32=1
mk clean

CC="gcc -m32" mk BUILD_STATIC=no PREFIX=/usr
mi BUILD_STATIC=no PREFIX=/usr LIBDIR=/usr/lib32

}
#d m32 bugfix
