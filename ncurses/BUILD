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

}
