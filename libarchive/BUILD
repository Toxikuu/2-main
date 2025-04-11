NAME="libarchive"
VERS="3.7.9"
DESC="Multi-format archive and compression library"
CATG="lib utils"
UPST="https://github.com/$NAME/$NAME.git"
DEPS=(
    "o^libxml2"
    "o^lzo"
    "o^nettle"
    "o^pcre2"
)

SOURCE="https://github.com/$NAME/$NAME/releases/download/v$VERS/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

_cfg_opts=(
    --without-xml2 # avoid abi breakage
)

cfg ${_cfg_opts[@]}
mk
mi

# avoid relying on the unmaintained unzip package
ln -sfv bsdunzip "$D"/usr/bin/unzip

}
#d typo
