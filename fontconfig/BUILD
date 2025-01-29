NAME="fontconfig"
VERS="2.16.0"
DESC="Library and utilities for configuring fonts"
UPST="https://gitlab.freedesktop.org/fontconfig/fontconfig.git"

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

b-cfg "${_cfg_opts[@]}"
b-make
b-mi

b-make distclean

b-32cfg "${_cfg_opts[@]}"
b-make
b-32mi

}

#d forgot to distclean oops
