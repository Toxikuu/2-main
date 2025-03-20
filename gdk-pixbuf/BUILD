NAME="gdk-pixbuf"
VERS="2.42.12"
DESC="Image loading library"
CATG="lib"
UPST="https://github.com/GNOME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | grep -v '[0-9]\\.9' | sort -V | tail -n1"
DEPS=(
    "glib"
    "libjpeg-turbo"
    "libpng"
    "shared-mime-info"
    "libtiff"
    "r^librsvg" # runtime, for loading symbolic icons
    "r^libavif" # runtime, for avif
    "r^webp-pixbuf-loader" # runtime, for webp
)

SOURCE="https://download.gnome.org/sources/$NAME/${VERS%.*}/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    --wrap-mode=nofallback
    -D man=false # avoid a dependency
    -D others=enabled # support weird image formats
)

ms ${_cfg_opts[@]}
nj
ni

}

2i() {

gdk-pixbuf-query-loaders --update-cache

}
