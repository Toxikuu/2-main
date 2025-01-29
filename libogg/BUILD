NAME="libogg"
VERS="1.3.5"
DESC="Ogg container format libraries"
UPST="https://github.com/xiph/ogg.git"

SOURCE="https://downloads.xiph.org/releases/ogg/libogg-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

b-make distclean

b-32cfg
b-make
b-32mi

}
