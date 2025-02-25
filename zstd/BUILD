NAME="zstd"
VERS="1.5.7"
DESC="The zstandard compression algorithm"
UPST="https://github.com/facebook/zstd.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]+' | grep -v -- -kernel | tail -n1"

SOURCE="https://github.com/facebook/zstd/releases/download/v$VERS/zstd-$VERS.tar.gz"
EXTRA=()

2b() {

mk prefix=/usr
mi prefix=/usr

mkdir -pv "$D"/usr/lib32
mk clean
m32=1

CC="gcc -m32" mk prefix=/usr
mk prefix=/usr DESTDIR="$PWD/32DEST" install
cp -av 32DEST/usr/lib/* "$D"/usr/lib32/ # note lib -> lib32

sed -e "/^libdir/s/lib$/lib32/" -i "$D"/usr/lib32/pkgconfig/libzstd.pc
rm -vf "$D"/usr/lib{,32}/libzstd.a

}
# bugfix for m32