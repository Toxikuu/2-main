NAME="nettle"
VERS="3.10.1"
DESC="Generic low-level cryptographic library"
UPST="https://git.lysator.liu.se/nettle/nettle.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '_release_' | cut -d_ -f2 | sort -V | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/nettle/nettle-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

chmod -v 755 "$D"/usr/lib/lib{hogweed,nettle}.so

}