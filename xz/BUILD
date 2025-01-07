NAME="xz"
VERS="5.6.3"
DESC="The xz compression algorithm"
UPST="https://github.com/tukaani-project/xz.git"

SOURCE="https://github.com/tukaani-project/xz/releases/download/v$VERS/xz-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --disable-doc
b-make
b-mi

b-make distclean

b-32cfg --disable-doc
b-make
b-32mi

}
