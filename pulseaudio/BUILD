NAME="pulseaudio"
VERS="17.0"
DESC="General-purpose sound server"
UPST="https://github.com/pulseaudio/pulseaudio.git"

SOURCE="https://www.freedesktop.org/software/$NAME/releases/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    -D database=gdbm
    -D doxygen=false
    -D bluez5=disabled
    -D tests=disabled
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
# disable tests for pulseaudio, as they aren't run and rope in check
