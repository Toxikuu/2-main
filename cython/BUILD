NAME="cython"
VERS="3.0.12"
DESC="C-Extensions for Python"
CATG="dev"
UPST="https://github.com/cython/cython.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-z]|-' | sort -V | tail -n1"
DEPS=(
    "python"
    "glibc"
    "setuptools"
    "wheel"
)

SOURCE="https://github.com/cython/cython/releases/download/$VERS/cython-$VERS.tar.gz"
EXTRA=()

2b() {

with pip

pipb
pipi "${NAME^}"

}
