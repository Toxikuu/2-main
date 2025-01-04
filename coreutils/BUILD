NAME="coreutils"
VERS="9.5"
DESC="Basic utility programs needed by every OS"
UPST="git://git.savannah.gnu.org/coreutils.git"

SOURCE="https://ftp.gnu.org/gnu/coreutils/coreutils-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/lfs/development/coreutils-$VERS-i18n-2.patch"
)

2b() {

patch -Np1 -i "$SRC"/coreutils-$VERS-i18n-2.patch

autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
    --enable-no-installed-program=kill,uptime

b-make
b-mi

mkdir -pv D/usr/sbin D/usr/share/man/man8
mv -v D/usr/bin/chroot D/usr/sbin/
mv -v D/usr/share/man/man1/chroot.1 D/usr/share/man/man8/chroot.8
sed -i 's@"1"@"8"@' D/usr/share/man/man8/chroot.8

}
