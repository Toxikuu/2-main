NAME="python"
VERS="3.13.1"
DESC="The Python programming language"
UPST="https://github.com/python/cpython.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'a|b|rc' | sort -V | tail -n1"

SOURCE="https://www.python.org/ftp/python/$VERS/Python-$VERS.tar.xz"
EXTRA=()

2b() {

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --enable-optimizations
b-make
b-mi

install -vDm644 "$PORT/pip.conf" "$D"/etc/pip.conf

}
