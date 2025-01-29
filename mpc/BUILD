NAME="mpc"
VERS="1.3.1"
DESC="Artibrary-precision complex arithmetic library"
UPST="https://gitlab.inria.fr/mpc/mpc.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^[0-9]+' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/mpc/mpc-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

}
