NAME="openssl"
VERS="3.4.0"
DESC="Cryptography tools and libraries"
UPST="https://github.com/openssl/openssl.git"

SOURCE="https://github.com/openssl/openssl/releases/download/openssl-$VERS/openssl-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    --openssldir=/etc/ssl
    --prefix=/usr  
    shared
    zlib-dynamic
)

./config --libdir=lib \
         "${_cfg_opts[@]}"
b-make

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
b-mi MANSUFFIX=ssl

# openssl really doesn't want to put the symlinks in DESTDIR LOL
find . -maxdepth 1 -type l -name 'lib*.so' -exec cp -av {} D/usr/lib \;

b-make distclean
./config --libdir=lib32 \
         linux-x86      \
         "${_cfg_opts[@]}"
b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

}
