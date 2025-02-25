NAME="man-pages"
VERS="6.12"
DESC="A man page database"
UPST="https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git"

SOURCE="https://www.kernel.org/pub/linux/docs/man-pages/man-pages-$VERS.tar.xz"
EXTRA=()

2b() {

rm -v man3/crypt*.3 # libxcrypt provides better ones
rm -v man5/nscd.conf.5 man8/nscd.8 # ncsd is dead

# make -R is required until make 4.5 according to
# https://gitlab.archlinux.org/archlinux/packaging/packages/man-pages/-/blob/d39465cf81398e23036c2bdc8472e6a1006eddc2/PKGBUILD
mi prefix=/usr -R

}