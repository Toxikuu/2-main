NAME="binutils"
VERS="2.44"
CATG="critical core"
DESC="Programs for working with binary and object files"
UPST="https://sourceware.org/git/binutils-gdb.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^binutils-[0-9]+_+' | grep -Ev 'release|branchpoint' | sed 's@_@.@g' | tail -n1"

SOURCE="https://sourceware.org/pub/binutils/releases/binutils-$VERS.tar.xz"

2b() {

mkdir -v build
cd       build

CP=.. cfg \
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

mk tooldir=/usr

make -k check || true
NUMFAILED=$(grep '^FAIL:' $(find -name '*.log') | wc -l)

if [ NUMFAILED -gt 12 ]; then
    die "$NUMFAILED tests failed (<= 12 is acceptable)"
fi

mi tooldir=/usr
rm -vf "$D"/usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a

}
