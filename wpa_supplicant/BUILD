# TODO: Add KCFG
NAME="wpa_supplicant"
VERS="2.11"
DESC="Utility providing key negotiation for WPA wireless networks"
CATG="utils net"
UPST="git://w1.fi/hostap.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,_,.,g' | cut -d. -f2- | grep -v '[a-Z]' | sort -V | tail -n1"
DEPS=(
    "libnl"
    "o^libxml2"
    "o^dbus"
)

SOURCE="https://w1.fi/releases/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

cat > wpa_supplicant/.config << "EOF"
CONFIG_BACKEND=file
CONFIG_CTRL_IFACE=y
CONFIG_DEBUG_FILE=y
CONFIG_DEBUG_SYSLOG=y
CONFIG_DEBUG_SYSLOG_FACILITY=LOG_DAEMON
CONFIG_DRIVER_NL80211=y
CONFIG_DRIVER_WEXT=y
CONFIG_DRIVER_WIRED=y
CONFIG_EAP_GTC=y
CONFIG_EAP_LEAP=y
CONFIG_EAP_MD5=y
CONFIG_EAP_MSCHAPV2=y
CONFIG_EAP_OTP=y
CONFIG_EAP_PEAP=y
CONFIG_EAP_TLS=y
CONFIG_EAP_TTLS=y
CONFIG_IEEE8021X_EAPOL=y
CONFIG_IPV6=y
CONFIG_LIBNL32=y
CONFIG_PEERKEY=y
CONFIG_PKCS12=y
CONFIG_READLINE=y
CONFIG_SMARTCARD=y
CONFIG_WPS=y
CFLAGS += -I/usr/include/libnl3
EOF

cd wpa_supplicant
make BINDIR=/usr/bin LIBDIR=/usr/lib

install -vDm755 wpa_{cli,passphrase,supplicant} -t "$D"/usr/bin/
install -vDm644 doc/docbook/wpa_supplicant.conf.5 -t "$D"/usr/share/man/man5/
install -vDm644 doc/docbook/wpa_{cli,passphrase,supplicant}.8 -t "$D"/usr/share/man/man8/

}

2i() {
    warn "This package requires some configuration to use"
}
