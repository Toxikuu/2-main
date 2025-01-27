NAME="zlib"
VERS="1.3.1"
DESC="Compression library used by a lot of packages"

SOURCE="https://zlib.net/fossils/zlib-$VERS.tar.gz"
EXTRA=()

2b() {

DS=1 b-cfg
b-make
b-mi

make distclean

CFLAGS+=" -m32" CXXFLAGS+=" -m32" \
./configure --prefix=/usr --libdir=/usr/lib32 # b-32cfg doesn't work bc this configure is picky
b-make

b-32mi

rm -vf D/usr/lib{,32}/libz.a

}
