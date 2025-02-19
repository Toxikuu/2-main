NAME="dejagnu"
VERS="1.6.3"
DESC="Framework for running GNU test suites written in expect"
UPST="https://git.savannah.gnu.org/git/dejagnu.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep release | tail -n1 | cut -d- -f2"

SOURCE="https://ftp.gnu.org/gnu/dejagnu/dejagnu-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. cfg
makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi
mi

install -vdm755  "$D"/usr/share/doc/dejagnu
install -vm644   doc/dejagnu.{html,txt} "$D"/usr/share/doc/dejagnu

}
