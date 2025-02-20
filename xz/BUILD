NAME="xz"
VERS="5.6.4"
DESC="The xz compression algorithm"
UPST="https://github.com/tukaani-project/xz.git"

SOURCE="https://github.com/tukaani-project/xz/releases/download/v$VERS/xz-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --disable-doc
mk
mi

mk distclean
m32=1

cfg --disable-doc
mk
mi

}
