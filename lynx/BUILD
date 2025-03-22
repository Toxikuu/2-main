NAME="lynx"
VERS="2.9.2"
DESC="TUI web browser"
CATG="tui net"
UPST="https://lynx.invisible-island.net/"
VCMD="curl -s '$UPST' | grep 'recent stable release is' | cut -d' ' -f9 | tr -d ';'"
DEPS=(
    "o^gnutls"
)

SOURCE="https://invisible-mirror.net/archives/lynx/tarballs/lynx$VERS.tar.bz2"
EXTRA=()

2b() {

_cfg_opts=(
    --sysconfdir=/etc/lynx
    --with-zlib
    --with-bzlib
    --with-ssl
    --with-screen=ncursesw
    --enable-locale-charset
    --datadir=/usr/share/doc/lynx
)

cfg ${_cfg_opts[@]}
mk
mk DESTDIR="$D" install-full

chgrp -vR root "$D"/usr/share/doc/lynx/lynx_doc

}
