NAME="gpgme"
VERS="1.24.2"
DESC="C wrapper library for GnuPG"
CATG="lib"
# There is a git repo, but it doesn't have a tag for the latest version as of writing (1.24.2) for some reason.
# Since GNU doesn't feel like tagging accurately, I'll use their website.
UPST="https://www.gnupg.org/software/gpgme/index.html"
VCMD="curl -s '$UPST' | grep 'The current version is ' | rev | cut -d' ' -f1 | rev | cut -d. -f1-3"
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
#d fixed vcmd
