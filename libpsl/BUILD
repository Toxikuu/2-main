NAME="libpsl"
VERS="0.21.5"
DESC="Library for accessing and resolving information from the Public Suffix List"
UPST="https://github.com/rockdaboot/libpsl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@libpsl-@@' | grep -v -- - | sort -V | tail -n1"

SOURCE="https://github.com/rockdaboot/libpsl/releases/download/$VERS/libpsl-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-ms
b-ninja
b-ni

rm -rf *

CP=.. b-32ms
b-ninja
b-32ni

}
