NAME="dhcpcd"
VERS="10.2.2"
DESC="Fully-featured, lightweight DHCP client"
CATG="net"
UPST="https://github.com/NetworkConfiguration/dhcpcd.git"
DEPS=(
    "openssl"
    "bash"
)

SOURCE="https://github.com/NetworkConfiguration/dhcpcd/releases/download/v$VERS/dhcpcd-$VERS.tar.xz"
EXTRA=()

2b() {

install -vdm700 "$D"/var/lib/dhcpcd

_cfg_opts=(
    --sysconfdir=/etc
    --libexecdir=/usr/lib/dhcpcd
    --dbdir=/var/lib/dhcpcd
    --runstatedir=/run
    --disable-privsep
)

cfg ${_cfg_opts[@]}
mk
mi

install -vDm754 "$PORT"/dhcpcd-service "$D"/usr/lib/services/dhcpcd

}
#d added dhcpcd-service
