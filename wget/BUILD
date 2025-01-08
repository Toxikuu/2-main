NAME="wget"
VERS="2.2.0"
DESC="Utility useful for non-interactive file downloads"
UPST="https://gitlab.com/gnuwget/wget2.git"

SOURCE="https://gnuwget.gitlab.io/wget2/wget2-latest.tar.gz"
EXTRA=()

2b() {

b-cfg \
    --with-lzma             \
    --with-bzip2            \
    --without-lzip          \
    --sysconfdir=/etc       \
    --without-brotlidec     \
    --disable-doc           \
    --disable-rpath         \
    --disable-fuzzing       \
    --enable-threads=posix  \
    --disable-nls           \
    --enable-year2038       \
    --with-gnu-ld           \
    --without-plugin-support

b-make
b-mi

ln -sfv wget2 "$D"/usr/bin/wget
rm -vf "$D"/usr/bin/wget2_noinstall # delete a useless testing binary

}
