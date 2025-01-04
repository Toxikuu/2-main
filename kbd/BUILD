NAME="kbd"
VERS="2.7.1"
DESC="Keyboard utilities and keytable files"
UPST="https://www.kernel.org/pub/linux/utils/kbd/kbd-$VERS.tar.xz"

SOURCE=""
EXTRA=()

2b() {

patch -Np1 -i "$SRC"/kbd-$VERS-backspace-1.patch

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

b-cfg --disable-vlock
b-make
b-mi

mkdir -pv D/usr/share/doc
cp -Rv docs/doc -T /usr/share/doc/kbd-$VERS

}
