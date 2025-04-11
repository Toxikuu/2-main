NAME="libpsl"
VERS="0.21.5"
DESC="Public Suffix List library"
CATG="lib net"
UPST="https://github.com/rockdaboot/libpsl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@$NAME-@@' | grep -v -- - | sort -V | tail -n1"
DEPS=(
    "libidn2"
    "libunistring"
    # icu is not used
)

SOURCE="https://github.com/rockdaboot/$NAME/releases/download/$VERS/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    -D tests=false
    -D docs=false
    -D runtime=libidn2
)

ms ${_cfg_opts[@]}
nj
ni

cd ..
m32=1

ms ${_cfg_opts[@]}
nj
ni

}
#d tweaked metadata
