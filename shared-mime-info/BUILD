NAME="shared-mime-info"
VERS="2.4"
DESC="MIME type database"
UPST="https://gitlab.freedesktop.org/xdg/shared-mime-info.git"

SOURCE="https://gitlab.freedesktop.org/xdg/$NAME/-/archive/$VERS/$NAME-$VERS.tar.gz"
EXTRA=()
DEPS=(
    "glib"
    "libxml2"
)

2b() {

mkdir -pv build
cd        build

CP=.. b-ms -D update-mimedb=true
b-ninja
b-ni

}
