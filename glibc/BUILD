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
mkdir -pv ../usr/lib32
cp -a 32DEST/usr/lib32/* ../D/usr/lib32/

install -vm644 32DEST/usr/include/gnu/{lib-names,stubs}-32.h \
               $PWD/../D/usr/include/gnu/

cd ..

b-make -C "$PWD/localedata" objdir="$PWD/build" \
  DESTDIR="$PWD/D" install-locale-files

# _cfg_flags=(
#   --disable-werror
#   --disable-nscd
#   --enable-kernel=6.11
#   --enable-stack-protector=strong
# )
#
# mkdir -pv build64 build32
# cd build64
#
# echo "rootsbindir=/usr/sbin" > configparms
# CP=.. b-cfg \
#       --libdir=/usr/lib         \
#       libc_cv_slibdir=/usr/lib  \
#       "${_cfg_flags[@]}"
#
# b-make
#
# cd ..
# sed '/test-installation/s@$(PERL)@echo not running@' -i Makefile
#
# cd build32
#
# echo "rootsbindir=/usr/sbin" > configparms
# CC="gcc -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"  \
# CXX="g++ -m32 -mstackrealign -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer" \
# CP=.. b-cfg \
#       --host=i686-pc-linux-gnu           \
#       --build=$(../scripts/config.guess) \
#       --libdir=/usr/lib32                \
#       --libexecdir=/usr/lib32            \
#       libc_cv_slibdir=/usr/lib32         \
#       "${_cfg_flags[@]}"
#
# b-make
#
# cd ..
# b-make -C "$PWD/localedata" objdir="$PWD/build64" \
#   DESTDIR="$PWD/locales" install-locale-files
#
# touch D/etc/ld.so.cache
# b-mi -C build64
# b-mi -C build32
# rm -vf D/etc/ld.so.cache
#
# install -vDm755 D/usr/lib/locale
#
# sed '/RTLDLIST=/s@/usr@@g' -i D/usr/bin/ldd
#
# cat > D/etc/nsswitch.conf << "EOF"
# # Begin /etc/nsswitch.conf
#
# passwd: files
# group: files
# shadow: files
#
# hosts: files dns
# networks: files
#
# protocols: files
# services: files
# ethers: files
# rpc: files
#
# # End /etc/nsswitch.conf
# EOF
#
# cat > D/etc/ld.so.conf << "EOF"
# # Dynamic library paths:
#
# /usr/lib32
# EOF

}

2z() {
  
cat > D/etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

cat > D/etc/ld.so.conf << "EOF"
# Dynamic library paths:

/usr/lib32
EOF

}
