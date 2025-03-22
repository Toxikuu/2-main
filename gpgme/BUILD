NAME="gpgme"
VERS="1.24.2"
DESC="C wrapper library for GnuPG"
CATG="lib"
UPST="https://github.com/gpg/gpgme.git"
DEPS=(
    "libassuan"
)

SOURCE="https://www.gnupg.org/ftp/gcrypt/gpgme/gpgme-$VERS.tar.bz2"
EXTRA=()

2b() {

with pip

mkdir -pv build
cd        build

CP=.. cfg --disable-gpg-test
mk PYTHONS=
mi PYTHONS=

}
