NAME="ncurses"
VERS="6.5"
CATG="core"
DESC="Libraries for terminal-independent character screen handling"
UPST="https://invisible-mirror.net/archives/ncurses/?C=M;O=D"
VCMD="curl -s '$UPST' | grep ncurses- | head -n1 | cut -d- -f2 | cut -d. -f1-2"

SOURCE="https://invisible-mirror.net/archives/ncurses/ncurses-$VERS.tar.gz"
EXTRA=()

2b() {

cfg \
    --mandir=/usr/share/man \
    --with-shared           \
    --without-debug         \
    --without-normal        \
    --with-cxx-shared       \
    --enable-pc-files       \
    --with-pkg-config-libdir=/usr/lib/pkgconfig

mk
mi

sed -e 's/^#if.*XOPEN.*$/#if 1/' \
    -i "$D"/usr/include/curses.h

for lib in ncurses form panel menu ; do
    ln -sfv lib${lib}w.so "$D"/usr/lib/lib${lib}.so
    ln -sfv ${lib}w.pc    "$D"/usr/lib/pkgconfig/${lib}.pc
done

ln -sfv libncursesw.so "$D"/usr/lib/libcurses.so

mk distclean
m32=1

cfg \
    --mandir=/usr/share/man \
    --with-shared           \
    --without-debug         \
    --without-normal        \
    --with-cxx-shared       \
    --enable-pc-files       \
    --with-pkg-config-libdir=/usr/lib32/pkgconfig

mk
mi

mkdir -pv {32DEST,D}/usr/lib32/pkgconfig
for lib in ncurses form panel menu ; do
    rm -vf                    32DEST/usr/lib32/lib${lib}.so
    echo "INPUT(-l${lib}w)" > 32DEST/usr/lib32/lib${lib}.so
    ln -svf ${lib}w.pc        32DEST/usr/lib32/pkgconfig/$lib.pc
done

rm -vf                     32DEST/usr/lib32/libcursesw.so
echo "INPUT(-lncursesw)" > 32DEST/usr/lib32/libcursesw.so
ln -sfv libncurses.so      32DEST/usr/lib32/libcurses.so
cp -Rv 32DEST/usr/lib32/* "$D"/usr/lib32

}
