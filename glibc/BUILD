# Maintainer: Tox

# NOTE:
# This build script is still in early development.
# It is not tested and it is not stable.
# TODO: Test this fully (currently, it builds and passes sanity checks, but I've yet to use it as a toolchain)
# TODO: Vendor the FHS compliance patch

NAME="glibc"
VERS="2.41"
DESC="The GNU C library"
CATG="critical core"
UPST="https://sourceware.org/git/glibc.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | cut -d- -f2 | grep -Ev '9000|[a-z]+' | grep '\\.' | sort -V | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/glibc/glibc-$VERS.tar.xz"
EXTRA=("https://www.linuxfromscratch.org/patches/lfs/development/glibc-$VERS-fhs-1.patch")

2b() {

tpatch "$SRC"/glibc-$VERS-fhs-1.patch

mkdir -v build
cd       build

echo "rootsbindir=/usr/sbin" > configparms
CP=.. cfg \
             --disable-werror                         \
             --enable-kernel=6.11                     \
             --enable-stack-protector=strong          \
             --disable-nscd                           \
             libc_cv_slibdir=/usr/lib

mk
sed '/test-installation/s@$(PERL)@echo not running@' -i ../Makefile

mi
sed '/RTLDLIST=/s@/usr@@g' -i "$D"/usr/bin/ldd

pushd ..
mk -C "$PWD/localedata" objdir="$PWD/build" \
  DESTDIR="$D" install-locale-files
popd

mkdir -pv "$D"/etc
for FILE in nsswitch.conf ld.so.conf; do
  cp -vf "$PORT/$FILE" "$D/etc/$FILE"
done

}
