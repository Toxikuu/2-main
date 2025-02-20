NAME="zlib"
VERS="1.3.1"
DESC="Compression library used by a lot of packages"
UPST="https://github.com/madler/zlib.git"

SOURCE="https://zlib.net/fossils/zlib-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

make distclean
m32=1

# CFLAGS+=" -m32" CXXFLAGS+=" -m32" \
cm --libdir=/usr/lib32
# ./configure --prefix=/usr --libdir=/usr/lib32 # b-32cfg doesn't work bc this configure is picky
mk
mi

rm -vf D/usr/lib{,32}/libz.a

}
