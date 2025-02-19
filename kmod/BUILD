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

cfg "${_cfg_opts[@]}"
mk
mi

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod "$D"/usr/sbin/$target
  rm -fv "$D"/usr/bin/$target
done

sed -e "s/^CLEANFILES =.*/CLEANFILES =/" -i man/Makefile
mk clean
m32=1

cfg "${_cfg_opts[@]}" \
    --with-rootlibdir=/usr/lib32

mk
mi

}
