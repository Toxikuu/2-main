NAME="xmlto"
VERS="0.0.29"
DESC="Convert XML to another format"
CATG=""
UPST=""
DEPS=(
    "docbook-xml"
    "docbook-xsl-nons"
    "libxslt"
    "lynx"  # needed for cups
)

SOURCE="https://pagure.io/xmlto/archive/$VERS/xmlto-$VERS.tar.gz"
EXTRA=()

2b() {

autoreconf -fiv

# avoid an elinks build issue
LINKS="/usr/bin/links" \
cfg
mk
mi

}
