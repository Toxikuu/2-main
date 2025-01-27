NAME="graphviz"
VERS="12.2.1"
DESC="Graph visualization software"

SOURCE="https://gitlab.com/graphviz/graphviz/-/archive/$VERS/graphviz-$VERS.tar.bz2"
EXTRA=()

2b() {

sed -i '/LIBPOSTFIX="64"/s/64//' configure.ac

./autogen.sh
DS=1 b-cfg

sed -i "s/0/$(date +%Y%m%d)/" builddate.h
b-make
b-mi

}
