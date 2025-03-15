NAME="fontconfig"
VERS="2.16.1"
DESC="Library and utilities for configuring fonts"
UPST="https://gitlab.freedesktop.org/fontconfig/fontconfig.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]' | sort -V | tail -n1"

SOURCE="https://gitlab.freedesktop.org/fontconfig/fontconfig/-/archive/$VERS/fontconfig-$VERS.tar.bz2"
EXTRA=()

DEPS=(
    "freetype"
)

2b() {

# generate configure
./autogen.sh
mk distclean

local _cfg_opts=(
    --sysconfdir=/etc
    --localstatedir=/var
    --disable-docs
)

cfg "${_cfg_opts[@]}"
mk
mi

mk distclean
m32=1

cfg "${_cfg_opts[@]}"
mk
mi

}
