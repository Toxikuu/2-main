NAME="openssh"
VERS="10.0p2"
DESC="Premier connectivity tool for remote login with the SSH protocol"
CATG="sec cli utils net"
UPST="https://github.com/openssh/openssh-portable.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'V_' | grep -Ev 'PRE|TEST' | cut -d_ -f2- | sed -e 's,_,.,' -e 's,_,,' | tr P p | sort -V | tail -n1"
DEPS=(
    "o^linux-pam"   # pam configuration files
    "o^shadow"      # pam configuration files
    "o^net-tools"   # entropy
    "o^sysstat"     # entropy
)

TAGV=${VERS//./_}
TAGV=${TAGV//p/_P}
SOURCE="https://github.com/openssh/openssh-portable/archive/refs/tags/V_$TAGV.tar.gz"
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
install -vDm755 INSTALL LICENCE OVERVIEW README* -t "$D/usr/share/doc/openssh/"

}

2z() {

groupadd -fg 50 sshd
id sshd || useradd -c 'sshd PrivSep' \
    -d /var/lib/sshd -u 50 \
    -g sshd -s /bin/false sshd

}
