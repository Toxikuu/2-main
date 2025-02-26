NAME="inetutils"
VERS="2.6"
CATG="core net"
DESC="Networking utilities"
UPST="https://git.savannah.gnu.org/git/inetutils.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]+' | grep -Ev '9[0-9]$' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/inetutils/inetutils-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i 's/def HAVE_TERMCAP_TGETENT/ 1/' telnet/telnet.c

_cfg_opts=(
    --prefix=/usr
    --bindir=/usr/bin
    --localstatedir=/var
    --disable-logger
    --disable-whois
    --disable-rcp
    --disable-rexec
    --disable-rlogin
    --disable-rsh
    --disable-servers
)

cfg "${_cfg_opts[@]}"
mk
mi

}
