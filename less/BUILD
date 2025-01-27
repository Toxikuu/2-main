NAME="less"
VERS="672"
DESC="Text pager"

SOURCE="https://github.com/gwsw/less/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

make -f Makefile.aut distfiles
autoreconf -fiv

DS=1 b-cfg --sysconfdir=/etc
b-make
b-mi

}
