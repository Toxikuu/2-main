NAME="procps-ng"
VERS="4.0.5"
CATG="core"
DESC="Programs for monitoring processes"
UPST="https://gitlab.com/procps-ng/procps.git"

SOURCE="https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --disable-kill  \
    --disable-rpath   \
    --disable-nls     \
    --docdir=/usr/share/doc/procps-ng-$VERS

mk
mi

}
