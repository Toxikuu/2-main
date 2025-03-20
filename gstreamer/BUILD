NAME="gstreamer"
VERS="1.26.0"
DESC="Development framework for multimedia applications"
CATG=""
UPST="https://github.com/GStreamer/gstreamer.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]|-' | sort -V | tail -n1"
DEPS=(
    "glib"
    "o^libnsl"
    "o^libunwind"
    "o^rust"
)

SOURCE="https://$NAME.freedesktop.org/src/$NAME/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D gst_debug=false
nj
ni

}
