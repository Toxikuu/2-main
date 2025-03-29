NAME="itstool"
VERS="2.0.7"
DESC="Translate XML with PO files"
CATG=""
UPST="https://github.com/itstool/itstool.git"
DEPS=(
    "docbook-xml"
)

SOURCE="https://files.itstool.org/itstool/itstool-$VERS.tar.bz2"
EXTRA=()

2b() {

# compatibility fix for python >= 3.12
sed -e 's/re.sub(/re.sub(r/' \
    -e 's/re.compile(/re.compile(r/' \
    -i itstool.in

PYTHON=/usr/bin/python3 cfg
mk
mi

}
