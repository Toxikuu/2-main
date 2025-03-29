NAME="appstream"
VERS="1.0.4"
DESC="Tools and libraries to work with AppStream metadata"
CATG="lib"
UPST="https://github.com/ximion/appstream.git"
DEPS=(
    "curl"
    "elogind"
    "itstool"
    "libxml2"
    "libyaml"
    "libstemmer" # optional, perf
)

SOURCE="https://www.freedesktop.org/software/appstream/releases/AppStream-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D apidocs=false -D stemming=true
nj
ni

}
