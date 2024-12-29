NAME="man-pages"
VERS="6.9.1"
DESC="A man page database"
UPST="https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git"

SOURCE="https://www.kernel.org/pub/linux/docs/man-pages/man-pages-$VERS.tar.xz"
EXTRA=()

2b() {

mkdir -pv D
rm -v man3/crypt* # libxcrypt provides better ones
b-make prefix=/usr install

}
