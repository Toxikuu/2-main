NAME="pipewire"
VERS="1.4.1"
DESC="Low-latency audio/video router and processor"
CATG="audio video"
UPST="https://gitlab.freedesktop.org/$NAME/$NAME.git"
DEPS=(
    # bluetooth
    "o^bluez"
    "o^sbc"

    # webcam
    "o^v4l-utils"

    # misc
    "o^alsa-lib"
    "o^avahi"
    "o^fdk-aac"
    "o^ffmpeg"
    "o^libcanberra"
    "o^libdrm"
    "o^libxcb"
    "o^libsndfile"
    "o^libusb"
    "o^opus"
    "o^sdl2"
    "o^vulkan-loader"
    # not all dependencies are documented because im lazy

    "pulseaudio"
    "gstreamer"
    "gst-plugins-base"
    "dbus"

    "run^wireplumber"
)

SOURCE="https://gitlab.freedesktop.org/$NAME/$NAME/-/archive/$VERS/$NAME-$VERS.tar.bz2"
EXTRA=()

2b() {

with meson ninja

ms -D session-managers="[]"
nj
ni

}
