NAME="isl"
VERS="0.27"
DESC="Library for manipulating sets and relations of integer points bounded by linear constraints"
UPST="git://repo.or.cz/isl.git"

SOURCE="https://libisl.sourceforge.io/isl-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

mkdir -pv D/usr/share/gdb/auto-load/usr/lib
mv -v D/usr/lib/libisl*gdb.py D/usr/share/gdb/auto-load/usr/lib

}
