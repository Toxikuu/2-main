NAME="dejagnu"
VERS="1.6.3"
DESC="Framework for running GNU test suites written in expect"
UPST="https://git.savannah.gnu.org/git/dejagnu.git"

SOURCE="https://ftp.gnu.org/gnu/dejagnu/dejagnu-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

../configure --prefix=/usr
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi

b-make check
b-mi

install -vDm644 doc/dejagnu.{html,txt} D/usr/share/doc/dejagnu-$VERS

}
