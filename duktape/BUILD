NAME="duktape"
VERS="2.7.0"
DESC="Lightweight, portable, embeddable Javascript engine"

SOURCE="https://duktape.org/duktape-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i 's/-Os/-O2/' Makefile.sharedlibrary
b-make -f Makefile.sharedlibrary INSTALL_PREFIX=/usr
b-mi   -f Makefile.sharedlibrary INSTALL_PREFIX=/usr 

}
