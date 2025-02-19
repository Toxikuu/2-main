NAME="libelf"
VERS="0.192"
DESC="Library for handling ELF files"
UPST="https://sourceware.org/git/elfutils.git"
VCMD="git ls-remote --tags '$UPST' | tail -n2 | head -n1 | cut -d- -f2"

SOURCE="https://sourceware.org/ftp/elfutils/$VERS/elfutils-$VERS.tar.bz2"
EXTRA=()

2b() {

_cfg_opts=(
    --prefix=/usr
    --disable-debuginfod
    --enable-libdebuginfod=dummy
)

cfg "${_cfg_opts[@]}"
mk
mi -C libelf

install -vDm644 config/libelf.pc "$D"/usr/lib/pkgconfig/libelf.pc
rm -v "$D"/usr/lib/libelf.a

mk distclean
m32=1

cfg "${_cfg_opts[@]}"
mk
mi -C libelf

install -vDm644 config/libelf.pc "$D"/usr/lib32/pkgconfig/libelf.pc

}
