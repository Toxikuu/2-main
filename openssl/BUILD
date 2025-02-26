NAME="openssl"
VERS="3.4.1"
CATG="core security"
DESC="Cryptography tools and libraries"
UPST="https://github.com/openssl/openssl.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'alpha|beta' | grep 'openssl-' | tail -n1"

SOURCE="https://github.com/openssl/openssl/releases/download/openssl-$VERS/openssl-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    --openssldir=/etc/ssl
    --prefix=/usr
    shared
    zlib-dynamic
)

./config "${_cfg_opts[@]}" \
          --libdir=lib
mk

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
mi MANSUFFIX=ssl

mk distclean
m32=1

./config "${_cfg_opts[@]}" \
          --libdir=lib32   \
          linux-x86
mk
mi

# this is a fucking stupid solution but i cant get openssl to cooperate LOL
pushd "$D"/usr/lib
ln -sfv libssl.so{.3,}
ln -sfv libcrypto.so{.3,}
popd

}
