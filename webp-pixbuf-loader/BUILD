NAME="webp-pixbuf-loader"
VERS="0.2.7"
DESC="Library allowing gdk-pixbuf to load and process WebP images"
CATG="lib"
UPST="https://github.com/aruiz/$NAME.git"
DEPS=(
    "gdk-pixbuf"
    "libwebp"
)

SOURCE="https://github.com/aruiz/$NAME/archive/$VERS/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

ms
nj
ni

}

2z() {

gdk-pixbuf-query-loaders --update-cache

}
