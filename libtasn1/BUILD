NAME="libtasn1"
VERS="4.19.0"
DESC="Library for encoding and decoding DER/BER data"
UPST="https://gitlab.com/gnutls/libtasn1.git"

SOURCE="https://ftp.gnu.org/gnu/$NAME/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

b-make distclean
b-32cfg
b-make
b-32mi

}
