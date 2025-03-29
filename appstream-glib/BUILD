NAME="appstream-glib"
VERS="0.8.3"
DESC="Objects and methods for reading and writing AppStream metadata"
CATG="lib"
UPST="https://github.com/hughsie/$NAME.git"
DEPS=(
    "curl"
    "gdk-pixbuf"
    "gtk3"
    "libarchive"
    "o^docbook-xml4"
    "o^docbook-xsl-nons"
    "o^gtk-doc"
    "o^libxslt"
    "o^libyaml"
)

SOURCE="http://people.freedesktop.org/~hughsient/$NAME/releases/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D rpm=false
nj
ni

}
