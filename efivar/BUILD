NAME="efivar"
VERS="39"
DESC="Tools and libraries for EFI variable manipulation"
UPST="https://github.com/rhboot/efivar.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep -B1 'refs/tags/4$' | head -n1 | cut -d/ -f3"

SOURCE="https://github.com/rhboot/efivar/archive/$VERS/efivar-$VERS.tar.gz"
EXTRA=()

2b() {

mk ENABLE_DOCS=0
mi LIBDIR=/usr/lib ENABLE_DOCS=0

}
