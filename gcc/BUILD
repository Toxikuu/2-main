NAME="gcc"
VERS="14.2.0"
DESC="The GNU compiler collection"
UPST="git://gcc.gnu.org/git/gcc.git"

SOURCE="https://ftp.gnu.org/gnu/gcc/gcc-$VERS/gcc-$VERS.tar.xz"
EXTRA=()

2b() {

sed -e '/m64=/s/lib64/lib/' \
    -e '/m32=/s/m32=.*/m32=..\/lib32$(call if_multiarch,:i386-linux-gnu)/' \
    -i.orig gcc/config/i386/t-linux64

sed '/STACK_REALIGN_DEFAULT/s/0/(!TARGET_64BIT \&\& TARGET_SSE)/' \
      -i gcc/config/i386/i386.h

mkdir -v build
cd       build

mlist=m64,m32
../configure --prefix=/usr               \
             LD=ld                       \
             --enable-languages=c,c++    \
             --enable-default-pie        \
             --enable-default-ssp        \
             --enable-host-pie           \
             --enable-multilib           \
             --with-multilib-list=$mlist \
             --disable-bootstrap         \
             --disable-fixincludes       \
             --with-system-zlib
b-make
b-mi

ln -sv gcc.1 /usr/share/man/man1/cc.1

ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/14.2.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/

echo 'int main(){}' > dummy.c
cc dummy.c -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'

grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log | grep succeeded || die "GCC sanity check failure!"

# just display
grep -B4 '^ /usr/include' dummy.log
grep 'SEARCH.*/usr/lib' dummy.log | sed 's|; |\n|g'

grep "/lib.*/libc.so.6 " dummy.log | grep succeeded || die "GCC sanity check failure!"
grep found dummy.log | grep found || die "GCC sanity check failure!"

rm -v dummy.c a.out dummy.log

mkdir -pv D/usr/share/gdb/auto-load/usr/lib
mv -v D/usr/lib/*gdb.py D/usr/share/gdb/auto-load/usr/lib

}
