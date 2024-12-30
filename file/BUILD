NAME="file"
VERS="5.46"
DESC="Utility for determining file type"
UPST="https://github.com/file/file.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | tail -n2 | head -n1 | sed 's/FILE//' | sed 's/_/./g'"

SOURCE="https://astron.com/pub/file/file-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

mkdir -pv D/usr/lib32
b-make distclean
CC="gcc -m32" b-cfg \
    --libdir=/usr/lib32 \
    --host=i686-pc-linux-gnu

b-make
b-make DESTDIR=$PWD/32DEST install
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
