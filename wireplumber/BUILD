NAME="wireplumber"
VERS="0.5.8"
DESC="Pipewire session and policy manager"
CATG="audio video"
UPST="https://gitlab.freedesktop.org/pipewire/$NAME.git"
DEPS=(
    "elogind"
    "glib"
    "pipewire"
    "lua"
)

SOURCE="https://gitlab.freedesktop.org/pipewire/$NAME/-/archive/$VERS/$NAME-$VERS.tar.bz2"
EXTRA=()

2b() {

with meson ninja

ms -D system-lua=true
nj
ni

install -vDm755 "$PORT"/pipewire-launcher.sh -t "$D/usr/bin"
install -vDm644 "$PORT"/pipewire.desktop -t "$D/etc/xdg/autostart/"

}

2z() {

rm -vf /etc/xdg/autostart/pulseaudio.desktop
rm -vf /etc/xdg/Xwayland-session.d/00-pulseaudio-x11
sed -e '$a autospawn = no' -i /etc/pulse/client.conf

}
