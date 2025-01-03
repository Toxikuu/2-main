NAME="inetutils"
VERS="2.5"
DESC="Networking utilities"
UPST="https://git.savannah.gnu.org/git/inetutils.git"

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

./configure "${_cfg_opts[@]}"
b-make
b-mi

mv -v D/usr/{,s}bin/ifconfig

}
