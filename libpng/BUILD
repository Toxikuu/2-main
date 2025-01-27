NAME="libpng"
VERS="1.6.45"
DESC="Libraries for reading and writing PNG formats"

SOURCE="https://github.com/pnggroup/libpng/archive/refs/tags/v$VERS.tar.gz"
EXTRA=(
    "https://sourceforge.net/projects/libpng-apng/files/latest/download"
)

2b() {

gzip -cd "$SRC"/libpng-$VERS-apng.patch.gz | patch -p1
b-cfg
b-make
b-mi

b-make distclean
b-32cfg
b-make
b-32mi

}
