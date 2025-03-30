NAME="ostree"
VERS="2025.2"
DESC="Library for container deployment and such"
CATG="lib"
UPST="https://github.com/ostreedev/ostree.git"
DEPS=(
    "fuse3"
    "glib"
    "libsoup2"
    "libsoup3"
    "elogind"
)

SOURCE="https://github.com/ostreedev/ostree/releases/download/v$VERS/libostree-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --sysconfdir=/etc
mk
mi

}