NAME="pulseaudio"
VERS="17.0"
DESC="General-purpose sound server"
UPST="https://github.com/$NAME/$NAME.git"

SOURCE="https://www.freedesktop.org/software/$NAME/releases/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

_cfg_opts=(
    -D database=gdbm
    -D doxygen=false
    -D bluez5=disabled
)

CP=.. DS=1 b-ms "${_cfg_opts[@]}"
b-ninja
b-ni
rm "$D"/usr/share/dbus-1/system.d/pulseaudio-system.conf

rm -rf *

CP=.. DS=1 b-ms --libdir=/usr/lib32 --cross-file lib32 "${_cfg_opts[@]}"
b-make
b-32mi

}
