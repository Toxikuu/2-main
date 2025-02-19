NAME="gmp"
VERS="6.3.0"
DESC="Arbitrary precision math libraries"
UPST="https://ftp.gnu.org/gnu/gmp/?C=M;O=D"
VCMD="curl -s '$UPST' | grep gmp- | head -n1 | cut -d'\"' -f8 | cut -d- -f2 | cut -d. -f1-3"

SOURCE="https://ftp.gnu.org/gnu/gmp/gmp-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --enable-cxx
mk

make check 2>&1 | tee gmp-check-log
NUMPASSED=$(awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log)

if [ $NUMPASSED -lt 199 ]; then
    die "Only $NUMPASSED gmp tests passed (>= 199 needed)!"
fi

mi
mk distclean

cp -v configfsf.guess config.guess
cp -v configfsf.sub   config.sub

m32=1
CFLAGS="-m32 -O2 -pedantic -fomit-frame-pointer -mtune=generic -march=i686" \
CXXFLAGS="$CFLAGS" ABI="32" \
cfg \
    --enable-cxx \
    --includedir=/usr/include/m32/gmp

sed -i 's/$(exec_prefix)\/include/$\(includedir\)/' Makefile
mk

make check 2>&1 | tee gmp-check-log
NUMPASSED=$(awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log)

if [ $NUMPASSED -lt 197 ]; then
    echo "Only $NUMPASSED gmp tests passed (>= 197 needed)!"
fi

mkdir -pv "$D"/usr/{lib32,include/m32}

mi
cp -av "$BLD/32DEST/usr/include/m32" "$D/usr/include/m32"

}
