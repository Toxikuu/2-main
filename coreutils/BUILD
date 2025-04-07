NAME="coreutils"
VERS="9.6"
CATG="core"
DESC="Basic utility programs needed by every OS"
UPST="git://git.savannah.gnu.org/coreutils.git"
DEPS=(
    "acl"
    "attr"
    "glibc"
    "gmp"
    "libcap"
    "openssl"
    "python"
)

SOURCE="https://ftp.gnu.org/gnu/coreutils/coreutils-$VERS.tar.xz"

2b() {

_cfg_opts=(
    --with-openssl
    --enable-no-install-program=hostname,kill,uptime
)

FORCE_UNSAFE_CONFIGURE=1 cfg ${_cfg_opts[@]}

mk
mi

# FHS compliance
mkdir -pv "$D"/usr/sbin "$D"/usr/share/man/man8
mv -v "$D"/usr/{,s}bin/chroot
mv -v "$D"/usr/share/man/man1/chroot.1 "$D"/usr/share/man/man8/chroot.8
sed -i 's@"1"@"8"@' "$D"/usr/share/man/man8/chroot.8

}
