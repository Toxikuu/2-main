NAME="libelf"
VERS="0.192"
DESC="Library for handling ELF files"
UPST="git://sourceware.org/git/elfutils.git"

SOURCE="https://sourceware.org/ftp/elfutils/$VERS/elfutils-$VERS.tar.bz2"
EXTRA=()

2b() {

_cfg_opts=(
    --prefix=/usr
    --disable-debuginfod
    --enable-libdebuginfod=dummy
)

./configure "${_cfg_opts[@]}"

b-make
b-mi -C libelf

install -vDm644 config/libelf.pc D/usr/lib/pkgconfig/libelf.pc
rm -v D/usr/lib/libelf.a

b-make distclean

CC="gcc -m32" CXX="g++ -m32" \
./configure                  \
    --host=i686-pc-linux-gnu \
    --libdir=/usr/lib32      \
    "${_cfg_opts[@]}"

b-make
b-make DESTDIR="$PWD/32DEST" -C libelf install
install -vDm644 config/libelf.pc 32DEST/usr/lib32/pkgconfig/libelf.pc
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
