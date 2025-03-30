NAME="json-glib"
VERS="1.10.6"
DESC="Library providing (de)serialization support for JSON"
CATG="lib"
UPST="https://gitlab.gnome.org/GNOME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | sort -V | tail -n1"
DEPS=(
    "glib"
)

SOURCE="https://download.gnome.org/sources/$NAME/${VERS%.*}/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms
nj
ni

}
