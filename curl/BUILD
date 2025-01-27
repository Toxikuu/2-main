NAME="curl"
VERS="8.11.1"
DESC="Tool and library for transferring data with URLs"

SOURCE="https://curl.se/download/curl-$VERS.tar.xz"
EXTRA=(
    "https://glfs-book.github.io/glfs/patches/curl-eventfd_regression-1.patch"
)

2b() {

b-patch "$SRC"/curl-eventfd_regression-1.patch

mkdir -pv build
cd        build

_cfg_opts=(
    --with-openssl
    --with-ca-path=/etc/ssl/certs
)

CP=.. b-cfg "${_cfg_opts[@]}"
b-make
b-mi

rm -rf docs/examples/.deps &&

find docs \( -name Makefile\* -o  \
             -name \*.1       -o  \
             -name \*.3       -o  \
             -name CMakeLists.txt \) -delete &&

cp -av docs -T /usr/share/doc/curl-$VERS

rm -rf *

CP=.. b-32cfg "${_cfg_opts[@]}"
b-make
b-32mi

}
