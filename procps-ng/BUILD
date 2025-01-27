NAME="procps-ng"
VERS="4.0.5"
DESC="Programs for monitoring processes"

SOURCE="https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --disable-kill  \
    --disable-rpath   \
    --disable-nls     \
    --docdir=/usr/share/doc/procps-ng-$VERS

b-make
b-mi

}
