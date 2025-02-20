NAME="wget"
VERS="2.2.0"
DESC="Utility useful for non-interactive file downloads"
UPST="https://gitlab.com/gnuwget/wget2.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep v | tail -n1 | cut -d/ -f3"

SOURCE="https://gnuwget.gitlab.io/wget2/wget2-latest.tar.gz"
EXTRA=()

2b() {

cfg \
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

mk
mi

ln -sfv wget2 "$D"/usr/bin/wget
rm -vf "$D"/usr/bin/wget2_noinstall # delete a useless testing binary

}
