NAME="seatd"
VERS="0.9.1"
DESC="Universal seat management library"
UPST="https://github.com/kennylevinsen/seatd.git"

SOURCE="https://git.sr.ht/~kennylevinsen/seatd/archive/$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

ms -D server=disabled -D libseat-seatd=disabled
nj
ni

}
