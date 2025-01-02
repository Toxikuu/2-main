NAME="acl"
VERS="2.3.2"
DESC="Access Control Lists"
UPST="https://git.savannah.nongnu.org/git/acl.git"

SOURCE="https://download.savannah.gnu.org/releases/acl/acl-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

b-make distclean

CC="gcc -m32"               \
b-cfg                       \
    --libdir=/usr/lib32     \
    --libexecdir=/usr/lib32 \
    --host=i686-pc-linux-gnu

make
make DESTDIR=$PWD/32DEST install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
