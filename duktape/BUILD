NAME="duktape"
VERS="2.7.0"
DESC="Lightweight, portable, embeddable Javascript engine"
UPST="https://github.com/svaarala/duktape.git"

SOURCE="https://duktape.org/duktape-$VERS.tar.xz"
EXTRA=()

2b() {

tsed -i 's/-Os/-O2/' Makefile.sharedlibrary
mk -f Makefile.sharedlibrary INSTALL_PREFIX=/usr
mi   -f Makefile.sharedlibrary INSTALL_PREFIX=/usr

}
