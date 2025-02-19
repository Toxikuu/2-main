# Maintainer: Tox

# NOTE:
# This build script is still in early development.
# It is not tested and it is not stable.
# TODO: Test this fully
# TODO: Vendor the FHS compliance patch

NAME="glibc"
VERS="2.41"
DESC="The GNU C library"
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

rm -rf ./*
find .. -name "*.a" -delete

m32=1
CC="gcc -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"  \
CXX="g++ -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer" \
CP=.. cfg                                \
      --host=i686-pc-linux-gnu           \
      --build=$(../scripts/config.guess) \
      --enable-kernel=6.11               \
      --disable-nscd                     \
      --libdir=/usr/lib32                \
      --libexecdir=/usr/lib32            \
      libc_cv_slibdir=/usr/lib32

mk
mi

install -vm644 "$BLD"/32DEST/usr/include/gnu/{lib-names,stubs}-32.h \
               "$D"/usr/include/gnu/

mkdir -pv "$D"/etc
for FILE in nsswitch.conf ld.so.conf; do
  cp -vf "$PORT/$FILE" "$D/etc/$FILE"
done

}