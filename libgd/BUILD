NAME="libgd"
VERS="2.3.3"
DESC="GD Graphics Library"
CATG="lib graphics"
UPST="https://github.com/libgd/libgd.git"
VCMD="git ls-remote '$UPST' | sed 's@.*/@@' | grep '^gd-[0-9]\\.' | cut -d- -f2 | sort -V | tail -n1"
DEPS=(
    "fontconfig"
    "libavif"
    "libwebp"
)

SOURCE="https://github.com/libgd/libgd/releases/download/gd-$VERS/libgd-$VERS.tar.xz"
EXTRA=()

2b() {

./bootstrap.sh

_cfg_opts=(
    --disable-rpath
    --disable-gd-formats
    --without-xpm
    --without-raqm
    --without-liq
    --without-heif
)

cfg ${_cfg_opts[@]}
mk
mi

}
