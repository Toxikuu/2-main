NAME="readline"
VERS="8.2.13"
CATG="core"
DESC="Libraries for command-line editing and history"
UPST="https://ftp.gnu.org/gnu/readline/?C=M;O=D"
VCMD="curl -s '$UPST' | grep $NAME- | grep -Ev -- '-beta|-alpha|-rc|diff|doc|\\.sig|patches' | head -n1 | cut -d- -f2 | cut -dt -f1 | sed 's,.$,,'"

SOURCE="https://ftp.gnu.org/gnu/readline/readline-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf

cfg --with-curses
mk SHLIB_LIBS="-lncursesw"
mi SHLIB_LIBS="-lncursesw"

mk distclean
m32=1

cfg --with-curses
mk SHLIB_LIBS="-lncursesw"
mi SHLIB_LIBS="-lncursesw"

}
