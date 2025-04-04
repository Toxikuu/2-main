NAME="less"
VERS="675"
DESC="Text pager"
UPST="https://github.com/gwsw/less.git"

SOURCE="https://github.com/gwsw/less/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

make -f Makefile.aut distfiles
autoreconf -fiv

cfg --sysconfdir=/etc
mk
mi

}