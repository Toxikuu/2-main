NAME="udev"
VERS="257.1"
DESC="Programs for dynamic device node creation"
UPST="https://github.com/systemd/systemd.git"

SOURCE="https://github.com/systemd/systemd/archive/v$VERS/systemd-$VERS.tar.gz"
EXTRA=(
    "https://anduin.linuxfromscratch.org/LFS/udev-lfs-20230818.tar.xz"
)

2b() {

sed -e 's/GROUP="render"/GROUP="video"/' \
    -e 's/GROUP="sgx", //'               \
    -i rules.d/50-udev-default.rules.in

sed -i '/systemd-sysctl/s/^/#/' rules.d/99-systemd.rules.in

sed -e '/NETWORK_DIRS/s/systemd/udev/' \
    -i src/libsystemd/sd-network/network-util.h

mkdir -pv build
cd        build

_ms_opts=(
    -D mode=release
    -D dev-kvm-mode=0660
    -D link-udev-shared=false
    -D logind=false
    -D vconsole=false
)

CP=.. b-ms "${_ms_opts[@]}"

export udev_helpers=$(grep "'name' :" ../src/udev/meson.build | \
                      awk '{print $3}' | tr -d ",'" | grep -v 'udevadm')

b-ninja udevadm systemd-hwdb                                           \
      $(b-ninja -n | grep -Eo '(src/(lib)?udev|rules.d|hwdb.d)/[^ ]*') \
      $(realpath libudev.so --relative-to .)                           \
      $udev_helpers

install -vm755 -d {"$BLD"/D/usr/lib,"$BLD"/D/etc}/udev/{hwdb.d,rules.d,network}
install -vm755 -d "$BLD"/D/usr/{s,}bin
install -vm755 -d "$BLD"/D/usr/include
install -vm755 -d "$BLD"/D/usr/{lib,share}/pkgconfig
install -vm755 udevadm                             "$BLD"/D/usr/bin/
install -vm755 systemd-hwdb                        "$BLD"/D/usr/bin/udev-hwdb
ln      -svfn  ../bin/udevadm                      "$BLD"/D/usr/sbin/udevd
cp      -av    libudev.so{,*[0-9]}                 "$BLD"/D/usr/lib/
install -vm644 ../src/libudev/libudev.h            "$BLD"/D/usr/include/
install -vm644 src/libudev/*.pc                    "$BLD"/D/usr/lib/pkgconfig/
install -vm644 src/udev/*.pc                       "$BLD"/D/usr/share/pkgconfig/
install -vm644 ../src/udev/udev.conf               "$BLD"/D/etc/udev/
install -vm644 rules.d/* ../rules.d/README         "$BLD"/D/usr/lib/udev/rules.d/
install -vm644 $(find ../rules.d/*.rules \
                      -not -name '*power-switch*') "$BLD"/D/usr/lib/udev/rules.d/
install -vm644 hwdb.d/*  ../hwdb.d/{*.hwdb,README} "$BLD"/D/usr/lib/udev/hwdb.d/
install -vm755 $udev_helpers                       "$BLD"/D/usr/lib/udev
install -vm644 ../network/99-default.link          "$BLD"/D/usr/lib/udev/network

tar -xvf "$SRC"/udev-lfs-20230818.tar.xz
b-make -f udev-lfs-20230818/Makefile.lfs DESTDIR="$BLD/D" install

unset udev_helpers


# m32
rm -rf *

LANG=en_US.UTF-8 \
CP=.. b-32ms "${_ms_opts[@]}"

b-ninja \
      $(grep -o -E "^build (src/libudev|src/udev)[^:]*" \
        build.ninja | awk '{ print $2 }') \
      $(realpath libudev.so --relative-to .)

mkdir -pv D/usr/lib32/pkgconfig
cp -av libudev.so{,*[0-9]} D/usr/lib32/
sed -e "s@/usr/lib@&32@g" src/libudev/libudev.pc > D/usr/lib32/pkgconfig/libudev.pc

}

2z() {

udev-hwdb update

}
