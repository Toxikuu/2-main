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

b-make distclean
./config --libdir=lib32 \
         linux-x86      \
         "${_cfg_opts[@]}"
b-make
b-make DESTDIR="$PWD/32DEST" install
mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

# this is a fucking stupid solution but i cant get openssl to cooperate LOL
pushd D/usr/lib
ln -sfv libssl.so{.3,}
ln -sfv libcrypto.so{.3,}
popd


}
