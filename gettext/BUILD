NAME="gettext"
VERS="0.23.1"
DESC="Internationalization and localization utilities"
UPST="https://git.savannah.gnu.org/git/gettext.git"

SOURCE="https://ftp.gnu.org/gnu/gettext/gettext-$VERS.tar.xz"
EXTRA=()

2b() {

sed -e '/^structured/s/xmlError \*/typeof(xmlCtxtGetLastError(NULL)) /' \
    -i gettext-tools/src/its.c

_cfg_opts=(
    --disable-c++
    --disable-csharp
    --disable-dependency-tracking
    --disable-java
    --disable-native-java
    --disable-nls
    --disable-rpath
    --enable-curses
    --enable-shared
    --enable-threads=posix
    --with-xz
    --without-bzip2
    --without-cvs
    --without-emacs
    --without-git
    --without-included-gettext
)

b-cfg "${_cfg_opts[@]}"
b-make
b-mi
chmod -v 0755 D/usr/lib/preloadable_libintl.so

}
