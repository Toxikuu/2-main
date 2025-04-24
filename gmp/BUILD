NAME="gmp"
VERS="6.3.0"
CATG="critical core"
DESC="Arbitrary precision math libraries"
UPST="https://ftp.gnu.org/gnu/gmp/?C=M;O=D"
VCMD="curl -s '$UPST' | grep gmp- | head -n1 | cut -d'\"' -f8 | cut -d- -f2 | cut -d. -f1-3"

SOURCE="https://ftp.gnu.org/gnu/gmp/gmp-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --enable-cxx --host=none-linux-gnu
mk

make check 2>&1 | tee gmp-check-log
NUMPASSED=$(awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log)

if [ $NUMPASSED -lt 199 ]; then
    die "Only $NUMPASSED gmp tests passed (>= 199 needed)!"
fi

mi

}
