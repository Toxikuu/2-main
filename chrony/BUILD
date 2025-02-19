NAME="chrony"
VERS="4.6.1"
DESC="Lightweight NTP client and server"
UPST="https://gitlab.com/chrony/chrony.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | tail -n1"

SOURCE="https://chrony-project.org/releases/chrony-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_flags=(
    --disable-readline
    --without-editline
    --disable-sechash
    --without-nettle
    --without-gnutls
    --without-nss
    --without-tomcrypt
    --disable-nts
    --disable-cmdmon
    --disable-refclock
    --disable-phc
    --disable-pps
    --disable-ipv6
    --disable-rtc
    --disable-privdrop
    --without-libcap
    --disable-asyncdns
    --disable-timestamping
)

cfg "${_cfg_flags[@]}"
mk
mi

mkdir -pv "$D"/etc
cp -v "$PORT"/chrony.conf "$D"/etc/chrony.conf

}
