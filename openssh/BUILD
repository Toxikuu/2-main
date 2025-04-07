NAME="openssh"
VERS="9.9.p2"
DESC="Premier connectivity tool for remote login with the SSH protocol"
CATG="sec cli utils net"
UPST="https://github.com/openssh/openssh-portable.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'V_[0-9]_' | tail -n1 | cut -d_ -f2- | sed -e 's,_,.,' -e 's,_,,' | tr P p"
DEPS=(
    "o^linux-pam"   # pam configuration files
    "o^shadow"      # pam configuration files
    "o^net-tools"   # entropy
    "o^sysstat"     # entropy
)

SOURCE="https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.9p2.tar.gz"
EXTRA=()

2b() {

install -vdm700 -g sys "$D"/var/lib/sshd

_cfg_opts=(
    --sysconfdir=/etc/ssh
    --with-privsep-path=/var/lib/sshd
    --with-default-path=/usr/bin
    --with-superuser-path=/usr/sbin:/usr/bin
    --with-pid-dir=/run
)

cfg ${_cfg_opts[@]}
mk
mi

install -vDm755 "contrib/ssh-copy-id" -t "$D/usr/bin/"
install -vDm755 "contrib/ssh-copy-id.1" -t "$D/usr/share/man/man1/"
isntall -vDm755 INSTALL LICENSE OVERVIEW README* -t "$D/usr/share/doc/openssh/"

}

2z() {

groupadd -fg 50 sshd
id sshd || useradd -c 'sshd PrivSep' \
    -d /var/lib/sshd -u 50 \
    -g sshd -s /bin/false sshd

}
