NAME="fontconfig"
VERS="2.16.0"
DESC="Library and utilities for configuring fonts"
UPST="https://gitlab.freedesktop.org/fontconfig/fontconfig.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]' | sort -V | tail -n1"

SOURCE="https://www.freedesktop.org/software/fontconfig/release/fontconfig-$VERS.tar.xz"
EXTRA=()

DEPS=(
    "freetype"
)

2b() {

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
