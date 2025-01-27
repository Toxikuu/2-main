NAME="man-pages"
VERS="6.10"
DESC="A man page database"

SOURCE="https://www.kernel.org/pub/linux/docs/man-pages/man-pages-$VERS.tar.xz"
EXTRA=()

2b() {

rm -v man3/crypt* # libxcrypt provides better ones
make prefix="$D/usr" install

}
