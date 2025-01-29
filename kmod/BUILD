NAME="kmod"
VERS="33"
DESC="Libraries and utilities for loading kernel modules"
UPST="https://kernel.googlesource.com/pub/scm/utils/kernel/kmod/kmod.git"

SOURCE="https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -pv "$D"/usr/sbin

_cfg_opts=(
    --prefix=/usr
    --sysconfdir=/etc
    --with-openssl
    --with-xz
    --with-zstd
    --with-zlib
    --disable-manpages
)

DS=1 b-cfg "${_cfg_opts[@]}"

b-make
b-mi

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod "$D"/usr/sbin/$target
  rm -fv "$D"/usr/bin/$target
done

sed -e "s/^CLEANFILES =.*/CLEANFILES =/" -i man/Makefile
b-make clean

DS=1 b-32cfg \
    "${_cfg_opts[@]}" \
    --with-rootlibdir=/usr/lib32

b-make
b-32mi

}
