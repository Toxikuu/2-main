NAME="zlib"
VERS="1.3.1"
CATG="core"
DESC="Compression library used by a lot of packages"
UPST="https://github.com/madler/zlib.git"

SOURCE="https://zlib.net/fossils/zlib-$VERS.tar.gz"
EXTRA=()

2b() {

DONT_DISABLE_STATIC=1 \
cfg
mk
mi

make distclean
m32=1

CFLAGS+=" -m32" CXXFLAGS+=" -m32" \
./configure --prefix=/usr --libdir=/usr/lib32 # doesnt recognize --host=i686-pc-linux-gnu => no abstraction :(
mk
mi

rm -vf D/usr/lib{,32}/libz.a

}
