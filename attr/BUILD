NAME="attr"
VERS="2.5.2"
DESC="Utilities to administer filesystem object attributes"
UPST="https://git.savannah.nongnu.org/git/attr.git"

SOURCE="https://download.savannah.gnu.org/releases/attr/attr-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --sysconfdir=/etc
b-make
b-mi

b-make distclean
CC="gcc -m32"           \
b-cfg                   \
    --sysconfdir=/etc   \
    --libdir=/usr/lib32 \
    --host=i686-pc-linux-gnu

b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
