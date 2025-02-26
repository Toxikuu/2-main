NAME="isl"
VERS="0.27"
CATG="critical core"
DESC="Library for manipulating sets and relations of integer points bounded by linear constraints"
UPST="https://repo.or.cz/isl.git"

SOURCE="https://libisl.sourceforge.io/isl-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

install -vd /usr/share/doc/isl
install -m644 doc/{CodingStyle,manual.pdf,SubmittingPatches,user.pod} \
        /usr/share/doc/isl

mkdir -pv "$D"/usr/share/gdb/auto-load/usr/lib
mv -v "$D"/usr/lib/libisl*gdb.py "$D"/usr/share/gdb/auto-load/usr/lib

}
