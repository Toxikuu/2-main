NAME="dbus"
VERS="1.16.2"
DESC="Freedesktop.org message bus system"
UPST="https://gitlab.freedesktop.org/dbus/dbus.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E 'dbus-[0-9]' | sort -V | tail -n1"
DEPS=(
    "libcap"
    "glib"
    "xmlto"
    # xorg libraries for dbus-launch
)

SOURCE="https://dbus.freedesktop.org/releases/dbus/dbus-$VERS.tar.xz"
EXTRA=(
    "https://anduin.linuxfromscratch.org/BLFS/blfs-bootscripts/blfs-bootscripts-20240913.tar.xz"
)

2b() {

with meson ninja

_cfg_opts=(
    --wrap-mode=nofallback
    -D localstatedir=/var
    -D runtime_dir=/run
    -D sysconfdir=/etc
    -D doxygen_docs=disabled
    -D modular_tests=disabled
    -D qt_help=disabled
    -D selinux=disabled
    -D stats=false
    -D systemd_user_unitdir=''
    -D systemd_system_unitdir=''
    -D systemd=disabled
    -D tools=true
    -D traditional_activation=true
    -D user_session=false
    -D valgrind=disabled
    -D xml_docs=disabled
    -D system_socket=/run/dbus/system_bus_socket
)

ms ${cfg_opts[@]}
nj
ni

chown -v root:messagebus "$D"/usr/libexec/dbus-daemon-launch-helper
chmod -v      4750       "$D"/usr/libexec/dbus-daemon-launch-helper

cd ..
m32=1

ms \
    --cross-file=/usr/share/meson/cross/lib32 \
    ${_cfg_opts[@]}

nj
ni

}
#d simplified instructions
