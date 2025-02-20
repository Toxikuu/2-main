NAME="mpfr"
VERS="4.2.1"
DESC="Arbitrary-precision floating-point math library"
UPST="https://gitlab.inria.fr/mpfr/mpfr.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep -Ev 'emptycommit|deleted|-rc|-root' | tail -n1 | sed 's@.*/@@'"

SOURCE="https://ftp.gnu.org/gnu/mpfr/mpfr-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --enable-thread-safe
mk
mi

}