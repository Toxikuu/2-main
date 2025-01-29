NAME="elogind"
VERS="255.17"
DESC="Systemd's \"logind\", extracted to a standalone package"
UPST="https://github.com/elogind/elogind.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'pre|r|alpha' | sed 's@v@@' | sort -V | tail -n1"

SOURCE="https://github.com/elogind/elogind/archive/v$VERS/elogind-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-ms \
    -D docdir=/usr/share/doc/elogind-$VERS \
    -D cgroup-controller=elogind           \
    -D dev-kvm-mode=0660                   \
    -D dbuspolicydir=/etc/dbus-1/system.d

b-ninja
b-ni

ln -sfv  libelogind.pc "$D"/usr/lib/pkgconfig/libsystemd.pc
ln -sfvn elogind "$D"/usr/include/systemd

rm -rf *

CP=.. b-32ms \
    -D cgroup-controller=elogind           \
    -D dev-kvm-mode=0660                   \
    -D dbuspolicydir=/etc/dbus-1/system.d

b-ninja
b-32ni

ln -sfv libelogind.pc "$D"/usr/lib32/pkgconfig/libsystemd.pc

cp -av {"$PORT","$D"}/etc

}
