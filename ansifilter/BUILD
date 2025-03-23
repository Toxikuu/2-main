NAME="ansifilter"
VERS="2.21"
DESC="ANSI sequence filter"
CATG="cli utils"
UPST="https://gitlab.com/saalen/ansifilter.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@v@@' | sort -V | tail -n1"
DEPS=()

SOURCE="https://gitlab.com/saalen/ansifilter/-/archive/$VERS/ansifilter-$VERS.tar.bz2"
EXTRA=()

2b() {

mk
mi

rm -vf "$D"/usr/share/doc/ansifilter/{COPYING,INSTALL}

}
