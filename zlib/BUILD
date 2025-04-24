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

rm -vf D/usr/lib{,32}/libz.a

}
