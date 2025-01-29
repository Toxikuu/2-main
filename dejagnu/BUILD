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

DS=1 b-cfg

b-mi

}

