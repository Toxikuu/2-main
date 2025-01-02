NAME="binutils"
VERS="2.43.1"
DESC="Programs for working with binary and object files"
UPST="git://sourceware.org/git/binutils-gdb.git"

SOURCE="https://sourceware.org/pub/binutils/releases/binutils-$VERS.tar.xz"
EXTRA=("https://www.linuxfromscratch.org/patches/downloads/binutils/binutils-$VERS-upstream_fix-1.patch")

2b() {

b-patch "$SRC/binutils-$VERS-upstream_fix-1.patch"

mkdir -v build
cd       build

../configure --prefix=/usr  \
    --sysconfdir=/etc       \
    --enable-gold           \
    --enable-ld=default     \
    --enable-plugins        \
    --enable-shared         \
    --disable-werror        \
    --enable-64-bit-bfd     \
    --with-system-zlib      \
    --enable-multilib       \
    --enable-default-hash-style=gnu

b-make tooldir=/usr

make -k check || true
NUMFAILED=$(grep '^FAIL:' $(find -name '*.log') | wc -l)

if [ NUMFAILED -gt 12 ]; then
    die "$NUMFAILED tests failed (<= 12 is acceptable)"
fi

b-mi tooldir=/usr
rm -vf D/usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a

}
