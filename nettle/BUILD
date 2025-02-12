NAME="nettle"
VERS="3.10"
DESC="Generic low-level cryptographic library"
UPST="https://git.lysator.liu.se/nettle/nettle.git"

SOURCE="https://ftp.gnu.org/gnu/nettle/nettle-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

chmod -v 755 "$D"/usr/lib/lib{hogweed,nettle}.so

}
