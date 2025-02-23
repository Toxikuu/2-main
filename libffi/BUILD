NAME="libffi"
VERS="3.4.7"
DESC="Foreign Function Interface library"
UPST="https://github.com/libffi/libffi.git"

SOURCE="https://github.com/libffi/libffi/releases/download/v$VERS/libffi-$VERS.tar.gz"
EXTRA=()

2b() {

cfg --with-gcc-arch=native
mk
mi

mk distclean
m32=1

cfg --with-gcc-arch=i686
mk
mi

}
