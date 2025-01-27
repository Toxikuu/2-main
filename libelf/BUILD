NAME="libelf"
VERS="0.192"
DESC="Library for handling ELF files"

SOURCE="https://sourceware.org/ftp/elfutils/$VERS/elfutils-$VERS.tar.bz2"
EXTRA=()

2b() {

_cfg_opts=(
    --prefix=/usr
    --disable-debuginfod
    --enable-libdebuginfod=dummy
)

DS=1 b-cfg "${_cfg_opts[@]}"

b-make
b-mi -C libelf

install -vDm644 config/libelf.pc "$D"/usr/lib/pkgconfig/libelf.pc
rm -v "$D"/usr/lib/libelf.a

b-make distclean

DS=1 b-32cfg "${_cfg_opts[@]}"

b-make
b-32mi -C libelf
install -vDm644 config/libelf.pc "$D"/usr/lib32/pkgconfig/libelf.pc

}
