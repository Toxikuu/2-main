NAME="gst-plugins-base"
VERS="1.26.0"
DESC="Base gstreamer plugins and helper libraries"
CATG="lib"
UPST="https://github.com/GStreamer/gstreamer.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]|-' | sort -V | tail -n1"
DEPS=(
    "gstreamer"
    "alsa-lib"
    "glib"
    "libgudev"
    "libjpeg-turbo"
    "libogg"
    "libpng"
    "libvorbis"
    "mesa"
    "pango"
    "wayland-protocols"
    "libx11"
    "o^libtheora"
    "o^libvisual"
    "o^graphene"
    "o^opus"
    "o^sdl2"
    "o^cdparanoia: for cdda"
)

SOURCE="https://gstreamer.freedesktop.org/src/$NAME/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms --wrap-mode=nodownload
nj
ni

}
