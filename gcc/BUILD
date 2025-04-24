NAME="gcc"
VERS="14.2.0"
DESC="The GNU compiler collection"
UPST="https://gcc.gnu.org/git/gcc.git"
CATG="critical core"
VCMD="no" # maintainers will know when gcc updates lol

SOURCE="https://ftp.gnu.org/gnu/gcc/gcc-$VERS/gcc-$VERS.tar.xz"
EXTRA=()

2b() {

case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac

mkdir -v build
cd       build

CP=.. cfg \
    LD=ld                       \
    --enable-languages=c,c++    \
    --enable-default-pie        \
    --enable-default-ssp        \
    --enable-host-pie           \
    --disable-multilib          \
    --disable-bootstrap         \
    --disable-fixincludes       \
    --with-system-zlib
mk
mi

# historical symlink is skipped (fuck fhs ong)
# ln -svr /usr/bin/cpp /usr/lib
ln -sv gcc.1 "$D"/usr/share/man/man1/cc.1

mkdir -pv "$D"/usr/lib/bfd-plugins
ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/$VERS/liblto_plugin.so \
        "$D"/usr/lib/bfd-plugins/

echo 'int main(){}' | "$D/usr/bin/cc" -x c - -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'

grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log | grep succeeded || die "GCC sanity check failure!"

# just display
grep -B4 '^ /usr/include' dummy.log
grep 'SEARCH.*/usr/lib' dummy.log | sed 's|; |\n|g'

grep "/lib.*/libc.so.6 " dummy.log | grep succeeded || die "GCC sanity check failure!"
grep found dummy.log | grep found || die "GCC sanity check failure!"

rm -vf a.out dummy.log

mkdir -pv "$D"/usr/share/gdb/auto-load/usr/lib
mv -vf "$D"/usr/lib/*gdb.py "$D"/usr/share/gdb/auto-load/usr/lib

}
#d hopefully fix a build failure
