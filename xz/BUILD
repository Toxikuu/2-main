NAME="xz"
VERS="5.8.1"
CATG="core utils cli lib"
DESC="The xz and lzma compression algorithms"
UPST="https://github.com/tukaani-project/xz.git"

SOURCE="https://github.com/tukaani-project/xz/releases/download/v$VERS/xz-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --disable-rpath
mk
mi

mk distclean
m32=1

CC="gcc -m32" cfg --disable-doc --disable-rpath
mk
mi

}