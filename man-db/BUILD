NAME="man-db"
VERS="2.13.0"
DESC="Utility for reading man pages"
CATG="doc utils tui"
UPST="https://gitlab.com/$NAME/$NAME.git"

SOURCE="https://download.savannah.gnu.org/releases/$NAME/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

_cfg_opts=(
    --sysconfdir=/etc
    --disable-setuid
    --enable-cache-owner=bin
    --with-db=gdbm
    --with-browser=/usr/bin/lynx
    --with-vgrind=/usr/bin/vgrind
    --with-grap=/usr/bin/grap
    --with-systemdtmpfilesdir=
    --with-systemdsystemunitdir=
)

cfg ${_cfg_opts[@]}
mk
mi

}
#d tweaks
