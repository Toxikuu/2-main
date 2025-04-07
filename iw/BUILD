# TODO: Add KCFG
NAME="iw"
VERS="6.9"
DESC="Configuration utility for wireless devices"
CATG="net utils"
UPST="https://git.kernel.org/pub/scm/linux/kernel/git/jberg/iw.git"
DEPS=(
    "libnl"
)

SOURCE="https://www.kernel.org/pub/software/network/iw/iw-$VERS.tar.xz"
EXTRA=()

2b() {

# install uncompressed manual pages to be consistent
sed -i "/INSTALL.*gz/s/.gz//" Makefile

mk
mi

}
