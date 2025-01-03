# Maintainer: Tox

# NOTE: 
# This build script is still in early development.
# It is not tested and it is not stable.

NAME="glibc"
VERS="2.40"
DESC="The GNU C library"
UPST="git://sourceware.org/git/glibc.git"

SOURCE="https://ftp.gnu.org/gnu/glibc/glibc-$VERS.tar.xz"
EXTRA=("https://www.linuxfromscratch.org/patches/lfs/development/glibc-$VERS-fhs-1.patch")

2b() {

b-patch "$SRC"/glibc-$VERS-fhs-1.patch

mkdir -v build
cd       build

echo "rootsbindir=/usr/sbin" > configparms
../configure --prefix=/usr                            \
             --disable-werror                         \
             --enable-kernel=6.11                     \
             --enable-stack-protector=strong          \
             --disable-nscd                           \
             libc_cv_slibdir=/usr/lib                ||
die 'configure failed'

make || die 'make failed'
sed '/test-installation/s@$(PERL)@echo not running@' -i ../Makefile

make DESTDIR=$PWD/../D install || die 'make install failed'
sed '/RTLDLIST=/s@/usr@@g' -i ../D/usr/bin/ldd

pushd ..
b-make -C "$PWD/localedata" objdir="$PWD/build" \
  DESTDIR="$PWD/D" install-locale-files
popd

rm -rf ./*
find .. -name "*.a" -delete

CC="gcc -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"  \
CXX="g++ -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer" \
../configure                             \
      --prefix=/usr                      \
      --host=i686-pc-linux-gnu           \
      --build=$(../scripts/config.guess) \
      --enable-kernel=6.11               \
      --disable-nscd                     \
      --libdir=/usr/lib32                \
      --libexecdir=/usr/lib32            \
      libc_cv_slibdir=/usr/lib32        ||
die 'm32 configure failed'

make || die 'm32 make failed'
make DESTDIR=$PWD/32DEST install || die 'm32 make install failed'
mkdir -pv ../D/usr/lib32
cp -a 32DEST/usr/lib32/* ../D/usr/lib32/

install -vm644 32DEST/usr/include/gnu/{lib-names,stubs}-32.h \
               $PWD/../D/usr/include/gnu/

cd ..

mkdir -pv D/etc
for FILE in nsswitch.conf ld.so.conf; do
  cp -vf "$PORT/$FILE" "D/etc/$FILE"
done

}
