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

chmod -v 4755 D/usr/sbin/unix_chkpwd
rm -rvf D/usr/lib/systemd

mkdir -pv D/etc/pam.d

rm -rf   build
mkdir -v build

CC="gcc -m32" CXX="g++ -m32"            \
PKG_CONFIG_PATH="/usr/lib32/pkgconfig"  \
CP=build b-ms        \
    -D docs=disabled \
    --libdir=/usr/lib32

b-ninja -C build

DESTDIR="$PWD/32DEST" b-ninja install
mkdir -pv D/usr/lib32
cp -vR 32DEST/usr/lib32/* D/usr/lib32

mkdir -pv D/etc/pam.d
cp -v "$PORT/system-*" D/etc/pam.d/
cp -v "$PORT/other" D/etc/pam.d/

}

2z() {

ldconfig

}
