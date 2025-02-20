NAME="pciutils"
VERS="3.13.0"
DESC="PCI bus configuration space access library and tools"
UPST="https://github.com/pciutils/pciutils.git"

SOURCE="https://mj.ucw.cz/download/linux/pci/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

sed -r '/INSTALL.*(PCI_IDS|update-pciids)/d' \
    -i Makefile

_mk_opts=(
    PREFIX=/usr
    SHAREDIR=/usr/share/hwdata
    SHARED=yes
    DESTDIR="$D"
)

mk ${_mk_opts[@]}
mk ${_mk_opts[@]} install install-lib

chmod -v 755 "$D"/usr/lib/libpci.so

}