NAME="libvdpau"
VERS="1.5"
DESC="Nvidia VDPAU (Video Decode and Presentation API for Unix) library"
CATG="graphics"
UPST="https://gitlab.freedesktop.org/vdpau/libvdpau.git"
VCMD="git ls-remote --tags --refs 'https://gitlab.freedesktop.org/vdpau/libvdpau.git' | sed 's@.*/@@' | sed 's@libvdpau-@@' | sort -V | tail -n1"
DEPS=(
    "xorg/@libs"
)

SOURCE="https://gitlab.freedesktop.org/vdpau/libvdpau/-/archive/$VERS/libvdpau-$VERS.tar.bz2"
EXTRA=()

2b() {

with meson ninja

ms
nj
ni

cd ..
m32=1

ms
nj
ni

}