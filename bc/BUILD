NAME="bc"
VERS="7.0.3"
DESC="Arbitrary precision numeric processing language"
UPST="https://github.com/gavinhoward/bc.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-z]+' | tail -n1"

SOURCE="https://github.com/gavinhoward/bc/releases/download/$VERS/bc-$VERS.tar.xz"
EXTRA=()

2b() {

CC=gcc ./configure --prefix=/usr -G -O3 -r
b-make
b-mi

}
