NAME="libdrm"
VERS="2.4.124"
DESC="Userspace interface to kernel DRM services"
CATG="graphics"
UPST="https://gitlab.freedesktop.org/mesa/drm.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'libdrm-' | grep -v '_' | sort -V | tail -n1"
DEPS=()

SOURCE="https://dri.freedesktop.org/libdrm/libdrm-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms  -D udev=true \
    -D valgrind=disabled  \
    -D cairo-tests=disabled

nj
ni

cd ..
m32=1

ms  -D udev=true \
    -D valgrind=disabled  \
    -D cairo-tests=disabled
nj
ni

}
