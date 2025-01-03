NAME="kmod"
VERS="33"
DESC="Libraries and utilities for loading kernel modules"
UPST="https://kernel.googlesource.com/pub/scm/utils/kernel/kmod/kmod.git"

SOURCE="https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-$VERS.tar.xz"
EXTRA=()

2b() {

_cfg_opts=(
    --prefix=/usr
    --sysconfdir=/etc
    --with-openssl
    --with-xz
    --with-zstd
    --with-zlib
    --disable-manpages
)

./configure "${_cfg_opts[@]}"

b-make
b-mi

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod D/usr/sbin/$target
  rm -fv D/usr/bin/$target
done

sed -e "s/^CLEANFILES =.*/CLEANFILES =/" -i man/Makefile
b-make clean

CC="gcc -m32" ./configure     \
    --host=i686-pc-linux-gnu  \
    --libdir=/usr/lib32       \
    "${_cfg_opts[@]}"         \
    --with-rootlibdir=/usr/lib32

b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
