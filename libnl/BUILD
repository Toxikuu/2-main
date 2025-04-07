NAME="libnl"
VERS="3.11.0"
DESC="Netlink protocol libraries"
CATG="net lib"
UPST="https://github.com/thom311/libnl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,_,.,g' -e 's,$NAME,,' | grep -v '[a-Z]' | sort -V | tail -n1"
DEPS=()

SOURCE="https://github.com/thom311/libnl/releases/download/libnl${VERS//./_}/libnl-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    --sysconfdir=/etc
    --disable-cli # don't install a bunch of random tools nobody ever uses
)

cfg ${_cfg_opts[@]}

mk
mi

}
