NAME="graphviz"
VERS="12.2.1"
DESC="Graph visualization software"
UPST="https://gitlab.com/graphviz/graphviz.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]' | sort -V | tail -n1"

SOURCE="https://gitlab.com/graphviz/graphviz/-/archive/$VERS/graphviz-$VERS.tar.bz2"
EXTRA=()

2b() {

sed -i '/LIBPOSTFIX="64"/s/64//' configure.ac

./autogen.sh
cfg

sed -i "s/0/$(date +%Y%m%d)/" builddate.h
mk
mi

}