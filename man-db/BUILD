NAME="man-db"
VERS="2.13.0"
DESC="Programs for finding and viewing man pages"
UPST="https://gitlab.com/man-db/man-db.git"

SOURCE="https://download.savannah.gnu.org/releases/man-db/man-db-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg \
    --docdir=/usr/share/doc/man-db-$VERS  \
    --sysconfdir=/etc                     \
    --disable-setuid                      \
    --enable-cache-owner=bin              \
    --with-browser=/usr/bin/lynx          \
    --with-vgrind=/usr/bin/vgrind         \
    --with-grap=/usr/bin/grap             \
    --with-systemdtmpfilesdir=            \
    --with-systemdsystemunitdir=

b-make
b-mi

}
