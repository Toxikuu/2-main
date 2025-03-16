NAME="steam"
VERS="1.0.0.82"
DESC="Valve's digital software delivery system"
CATG="games gui"
UPST="https://repo.steampowered.com/steam/pool/steam/s/steam/?C=M&O=D"
VCMD="curl -s '$UPST' | grep .tar.gz | head -n1 | cut -d_ -f2 | cut -d. -f1-4"
DEPS=(
    "alsa-plugins"
    "curl"
    "dbus"
    # a display server (ie xorg-server or wayland with xwayland)
    "make-ca"
    "mesa"
    "vulkan-loader"
    "pulseaudio"
    "xdg-user-dirs"
    "libgpg-error"
)
KOPT=(
    "NAMESPACES"
    "USER_NS"
)

SOURCE="https://repo.steampowered.com/steam/pool/steam/s/steam/steam_$VERS.tar.gz"
EXTRA=()

2b() {

ln -sf /usr/bin/true steamdeps # satisfy steam dependency checks
mi

}
