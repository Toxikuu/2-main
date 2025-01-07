NAME="linux-pam"
VERS="1.7.0"
DESC="Pluggable Authentication Modules"
UPST="https://github.com/linux-pam/linux-pam.git"

SOURCE="https://github.com/linux-pam/linux-pam/releases/download/v$VERS/Linux-PAM-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -v build

CP=build b-ms -D docs=disabled

b-ninja -C build
b-ni    -C build

rm -rvf "$D"/usr/lib/systemd
mkdir -pv "$D"/etc/pam.d

rm -rf   build
mkdir -v build

CP=build b-32ms -D docs=disabled
b-ninja -C build
b-32ni  -C build

mkdir -pv "$D"/etc/pam.d
cp -v "$PORT/system-"* "$D"/etc/pam.d/
cp -v "$PORT/other" "$D"/etc/pam.d/

}

2z() {

chmod -v 4755 /usr/sbin/unix_chkpwd
ldconfig

}
