NAME="libssh2"
VERS="1.11.1"
DESC="Client-side SSH2 library"
CATG="lib"
UPST="https://github.com/$NAME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^libssh2-' | sort -V | tail -n1"
DEPS=()

SOURCE="https://github.com/$NAME/$NAME/releases/download/$NAME-$VERS/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --disable-docker-tests
mk
mi

}
