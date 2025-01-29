NAME="readline"
VERS="8.2.13"
DESC="Libraries for command-line editing and history"
UPST="https://ftp.gnu.org/gnu/readline/?C=M;O=D"
VCMD="curl -s '$UPST' | grep readline- | grep -Ev 'beta|alpha' | head -n2 | tail -n1 | cut -d- -f2 | cut -d. -f1-3"

SOURCE="https://ftp.gnu.org/gnu/readline/readline-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf

b-cfg --with-curses
b-make SHLIB_LIBS="-lncursesw"
b-mi SHLIB_LIBS="-lncursesw"

b-make distclean

b-32cfg --with-curses
make SHLIB_LIBS="-lncursesw"
b-32mi SHLIB_LIBS="-lncursesw"

}
