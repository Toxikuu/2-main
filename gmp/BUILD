NAME="gmp"
VERS="6.3.0"
DESC="Arbitrary precision math libraries"
UPST="https://ftp.gnu.org/gnu/gmp/?C=M;O=D"
VCMD="curl -s '$UPST' | grep gmp- | head -n1 | cut -d \\\\\\\" -f8 | cut -d- -f2 | cut -d. -f1-3"

SOURCE="https://ftp.gnu.org/gnu/gmp/gmp-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --enable-cxx
b-make

make check 2>&1 | tee gmp-check-log
NUMPASSED=$(awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log)

if [ $NUMPASSED -lt 199 ]; then
    die "Only $NUMPASSED gmp tests passed (>= 199 needed)!"
fi

b-mi
b-make distclean

cp -v configfsf.guess config.guess
cp -v configfsf.sub   config.sub

ABI="32" \
CFLAGS="-m32 -O2 -pedantic -fomit-frame-pointer -mtune=generic -march=i686" \
CXXFLAGS="$CFLAGS" \
b-32cfg \
    --enable-cxx \
    --includedir=/usr/include/m32/gmp

sed -i 's/$(exec_prefix)\/include/$\(includedir\)/' Makefile
b-make

make check 2>&1 | tee gmp-check-log
NUMPASSED=$(awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log)

if [ $NUMPASSED -lt 197 ]; then
    echo "Only $NUMPASSED gmp tests passed (>= 197 needed)!"
fi

mkdir -pv "$D"/usr/{lib32,include/m32}

DIRS=(
    "/usr/include/m32"
)
b-32mi

}

