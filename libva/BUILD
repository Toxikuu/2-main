NAME="libva"
VERS="2.22.0"
DESC="Video Acceleration (VA) API for Linux"
CATG="graphics"
UPST="https://github.com/intel/libva.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^[0-9]\\.' | grep -v '[a-z]' | sort -V | tail -n1"
DEPS=(
    "libdrm"
)

SOURCE="https://github.com/intel/libva/archive/$VERS/libva-$VERS.tar.gz"
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
