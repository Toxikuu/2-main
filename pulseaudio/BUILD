NAME="pulseaudio"
VERS="17.0"
DESC="General-purpose sound server"
UPST="https://github.com/pulseaudio/pulseaudio.git"

SOURCE="https://www.freedesktop.org/software/$NAME/releases/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    -D daemon=true
    -D client=true
    -D doxygen=false
    -D gcov=false
    -D man=true
    -D tests=false
    -D system_user=pulse
    -D system_group=pulse
    -D access_group=pulse-access
    -D database=gdbm
    -D legacy-database-entry-format=false
    -D stream-restore-clear-old-devices=false # true is recommended for gnome
    -D running-from-build-tree=false
    -D atomic-arm-linux-helpers=true
    -D atomic-arm-memory-barrier=false
    -D bluez5=disabled
    -D jack=disabled
    -D lirc=disabled
    -D openssl=disabled # used for apple support
    -D systemd=disabled
    -D valgrind=disabled
    -D x11=enabled
    -D elogind=enabled
)

ms "${_cfg_opts[@]}"
nj
ni
rm -vf "$D"/usr/share/dbus-1/system.d/pulseaudio-system.conf

cd ..
m32=1

ms --cross-file lib32 "${_cfg_opts[@]}"
nj
ni

}
#d tweaked build options
