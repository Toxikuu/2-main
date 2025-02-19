NAME="linux-pam"
VERS="1.7.0"
DESC="Pluggable Authentication Modules"
UPST="https://github.com/linux-pam/linux-pam.git"

SOURCE="https://github.com/linux-pam/linux-pam/releases/download/v$VERS/Linux-PAM-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D docs=disabled
nj
ni

rm -rvf "$D"/usr/lib/systemd
mkdir -pv "$D"/etc/pam.d

cd ..
m32=1

ms -D docs=disabled
nj
ni

mkdir -pv "$D"/etc/pam.d
cp -v "$PORT/system-"* "$D"/etc/pam.d/
cp -v "$PORT/other" "$D"/etc/pam.d/

}

2z() {

chmod -v 4755 /usr/sbin/unix_chkpwd
ldconfig

}
