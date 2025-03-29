NAME="kmod"
VERS="34.2"
CATG="core"
DESC="Libraries and utilities for loading kernel modules"
UPST="https://kernel.googlesource.com/pub/scm/utils/kernel/kmod/kmod.git"

SOURCE="https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja
mkdir -pv "$D"/usr/sbin

_cfg_opts=(
    --prefix=/usr
    --sbindir=/usr/sbin
    --buildtype=release
    -D manpages=false
    -D docs=false
    -D build-tests=false
    -D debug-messages=false
    -D tools=true
    -D openssl=enabled
    -D zlib=enabled
    -D xz=enabled
    -D zstd=enabled
    -D moduledir=/lib/modules
)

ms "${_cfg_opts[@]}"
nj
ni

cd ..
m32=1

ms "${_cfg_opts[@]}"
ni
nj

}