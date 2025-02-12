NAME="gnutls"
VERS="3.8.9"
DESC="Library providing a secure layer over a reliable transport layer"
UPST="https://gitlab.com/gnutls/gnutls.git"
DEPS=(
  "nettle"
  "make-ca"
  "libunistring"
  "libtasn1"
  "p11-kit"
)

SOURCE="https://www.gnupg.org/ftp/gcrypt/gnutls/v${VERS:0:3}/gnutls-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg --with-default-trust-store-pkcs11="pkcs11:"
b-make
b-mi

}
