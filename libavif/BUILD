NAME="libavif"
VERS="1.2.1"
DESC="Library for handling AVIF images"
CATG="lib"
UPST="https://github.com/AOMediaCodec/libavif.git"
DEPS=(
    "libaom"
    "gdk-pixbuf"
    "make-ca"
)

SOURCE="https://github.com/AOMediaCodec/libavif/archive/v$VERS/libavif-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm \
    -D AVIF_CODEC_AOM=SYSTEM     \
    -D AVIF_BUILD_GDK_PIXBUF=ON  \
    -D AVIF_LIBYUV=OFF

nj
ni

}

2i() {

gdk-pixbuf-query-loaders --update-cache

}