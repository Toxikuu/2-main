NAME="libpng"
VERS="1.6.47"
DESC="Libraries for reading and writing PNG formats"
UPST="https://github.com/pnggroup/libpng.git"

SOURCE="https://github.com/pnggroup/libpng/archive/refs/tags/v$VERS.tar.gz"
EXTRA=(
    "https://sourceforge.net/projects/libpng-apng/files/libpng16/$VERS/libpng-$VERS-apng.patch.gz"
)

2b() {

gzip -cd "$SRC"/libpng-$VERS-apng.patch.gz | patch -p1

cfg
mk
mi

mk distclean
m32=1

cfg
mk
mi

}