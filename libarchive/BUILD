NAME="libarchive"
VERS="3.7.8"
DESC="Multi-format archive and compression library"
CATG=""
UPST="https://github.com/$NAME/$NAME.git"
DEPS=()

SOURCE="https://github.com/$NAME/$NAME/releases/download/v$VERS/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

# avoid relying on the unmaintained unzip package
ln -sfv bsdunzip "$D"/usr/bin/unzip

}
