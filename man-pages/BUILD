NAME="man-pages"
VERS="6.11"
DESC="A man page database"
UPST="https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git"

SOURCE="https://www.kernel.org/pub/linux/docs/man-pages/man-pages-$VERS.tar.xz"
EXTRA=()

2b() {

rm -v man3/crypt*.3 # libxcrypt provides better ones
rm -v man{5,8}/nscd.{5,8} # nscd is dead

mi prefix=/usr -R

}
