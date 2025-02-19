NAME="libpsl"
VERS="0.21.5"
DESC="Library for accessing and resolving information from the Public Suffix List"
UPST="https://github.com/rockdaboot/libpsl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@libpsl-@@' | grep -v -- - | sort -V | tail -n1"

SOURCE="https://github.com/rockdaboot/libpsl/releases/download/$VERS/libpsl-$VERS.tar.gz"
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
