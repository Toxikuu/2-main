NAME="cups"
VERS="2.4.12"
DESC="Common Unix Printing System"
CATG="print"
UPST="https://github.com/OpenPrinting/cups.git"
DEPS=(
    "gnutls"
    "dbus"
    "libusb"
    "linux-pam"
    "xdg-utils"
    "o^colord"
    "o^avahi"
    "o^libpaper"
    "o^krb5"
    "o^php"
    "r^cups-filters"
)

SOURCE="https://github.com/OpenPrinting/cups/releases/download/v$VERS/cups-$VERS-source.tar.gz"
EXTRA=()

2b() {

id lp || useradd -c "Print Service User" \
    -d /var/spool/cups -u 9 \
    -g lp -s /bin/false lp
groupadd -fg 19 lpadmin

_cfg_opts=(
    --libdir=/usr/lib
    --with-rcdir=/tmp/cupsinit
    --with-rundir=/run/cups
    --with-system-groups=lpadmin
)

cfg ${_cfg_opts[@]}
mk
mi

ln -svnf ../cups/doc "$D"/usr/share/doc/cups
rm -rf "$D"/tmp/cupsinit

mkdir -pv "$D"/etc/{cups,pam.d}
echo "ServerName /run/cups/cups.sock" > "$D"/etc/cups/client.conf

cat > "$D"/etc/pam.d/cups << "EOF"
# Begin /etc/pam.d/cups

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/cups
EOF

}

2z() {

gtk-update-icon-cache -qtf /usr/share/icons/hicolor

msg "You may want to add a user to the cups administrative group:"
msg " $ usermod -a -G lpadmin <user>"

}