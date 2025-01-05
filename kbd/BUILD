NAME="kbd"
VERS="2.7.1"
DESC="Keyboard utilities and keytable files"
UPST="https://git.kernel.org/pub/scm/linux/kernel/git/legion/kbd.git"

SOURCE="https://www.kernel.org/pub/linux/utils/kbd/kbd-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/lfs/development/kbd-$VERS-backspace-1.patch"
)

2b() {

patch -Np1 -i "$SRC"/kbd-$VERS-backspace-1.patch

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

b-cfg --disable-vlock
b-make
b-mi

mkdir -pv D/usr/share/doc
cp -Rv docs/doc -T D/usr/share/doc/kbd-$VERS

# TODO: Consider not packaging mac, atari, sun keymaps

}
