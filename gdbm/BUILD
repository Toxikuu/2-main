NAME="gdbm"
VERS="1.24"
DESC="The GNU Database Manager"
UPST="https://git.savannah.gnu.org/git/gdbm.git"

SOURCE="https://ftp.gnu.org/gnu/gdbm/gdbm-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --enable-libgdbm-compat
b-make
b-mi

b-make distclean
CC="gcc -m32" CXX="g++ -m32" \
b-cfg \
    --libdir=/usr/lib32      \
    --host=i686-pc-linux-gnu \
    --enable-libgdbm-compat

b-make
b-make DESTDIR="$PWD/32DEST" install
cp -Rv 32DEST/usr/lib32/* D/usr/lib32/

}
