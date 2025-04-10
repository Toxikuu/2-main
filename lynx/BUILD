NAME="lynx"
VERS="2.9.2"
DESC="TUI web browser"
CATG="tui net"
UPST="https://invisible-mirror.net/archives/lynx/tarballs/?C=N;O=D"
VCMD="curl -s '$UPST' | grep 'lynx[0-9].\\+.tar.bz2' | grep -v 'rel|dev' | head -n1 | cut -dx -f2 | cut -d. -f1-3"
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
#d fixed vcmd i think
