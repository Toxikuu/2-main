NAME="libffi"
VERS="3.4.6"
DESC="Foreign Function Interface library"
UPST="https://github.com/libffi/libffi.git"

SOURCE="https://github.com/libffi/libffi/releases/download/v$VERS/libffi-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --with-gcc-arch=native
b-make
b-mi

b-make distclean

b-32cfg
b-make
b-32mi

}
