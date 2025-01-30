NAME="coreutils"
VERS="9.6"
DESC="Basic utility programs needed by every OS"
UPST="https://git.savannah.gnu.org/coreutils.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/coreutils/coreutils-$VERS.tar.xz"
# EXTRA=(
#     "https://www.linuxfromscratch.org/patches/lfs/development/coreutils-$VERS-i18n-2.patch"
# )
#
# keeping i18n isn't worth the effort rn

2b() {

# patch -Np1 -i "$SRC"/coreutils-$VERS-i18n-2.patch

# autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1  \
DS=1 b-cfg \
    --enable-no-installed-program=kill,uptime

b-make
b-mi

mkdir -pv "$D"/usr/sbin "$D"/usr/share/man/man8
mv -v "$D"/usr/{,s}bin/chroot
mv -v "$D"/usr/share/man/man1/chroot.1 "$D"/usr/share/man/man8/chroot.8
sed -i 's@"1"@"8"@' "$D"/usr/share/man/man8/chroot.8

}
