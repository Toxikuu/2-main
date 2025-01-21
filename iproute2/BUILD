NAME="iproute2"
VERS="6.13.0"
DESC="Programs for IPv4 networking"
UPST="https://github.com/iproute2/iproute2.git"

SOURCE="https://www.kernel.org/pub/linux/utils/net/iproute2/iproute2-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

b-make NETNS_RUN_DIR=/run/netns
b-mi SBINDIR=/usr/sbin

install -vDm644 COPYING README* -t $D/usr/share/doc/iproute2-$VERS

}
