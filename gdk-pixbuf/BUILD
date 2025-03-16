NAME="gdk-pixbuf"
VERS="2.42.12"
DESC="Image loading library"
CATG="lib"
UPST="https://github.com/GNOME/$NAME.git"
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

ms \
  --wrap-mode=nofallback \
  -D others=enabled # enable other weird image formats
nj
ni

}

2i() {

gdk-pixbuf-query-loaders --update-cache

}
