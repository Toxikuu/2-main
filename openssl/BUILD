NAME="openssl"
VERS="3.5.0"
CATG="core security"
DESC="Cryptography tools and libraries"
UPST="https://github.com/openssl/openssl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'alpha|beta' | grep 'openssl-' | tail -n1"

SOURCE="https://github.com/openssl/openssl/releases/download/openssl-$VERS/openssl-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    --prefix=/usr
    --openssldir=/etc/ssl
    --libdir=lib
    shared
    zlib-dynamic
)

./config ${_cfg_opts[@]}
mk

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
mi MANSUFFIX=ssl

# this is a fucking stupid solution but i cant get openssl to cooperate LOL
pushd "$D"/usr/lib
ln -sfv libssl.so{.3,}
ln -sfv libcrypto.so{.3,}
popd

}
