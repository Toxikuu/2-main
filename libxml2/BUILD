NAME="libxml2"
VERS="2.13.6"
DESC="Libraries and utilities for XML parsing"
UPST="https://github.com/GNOME/libxml2.git"

SOURCE="https://download.gnome.org/sources/libxml2/${VERS%.*}/libxml2-$VERS.tar.xz"
EXTRA=()

2b() {

_cfg_opts=(
    --sysconfdir=/etc
    --with-history
    --with-icu
)

cfg "${_cfg_opts[@]}" PYTHON=/usr/bin/python3
mk
mi

mk distclean
m32=1

cfg "${_cfg_opts[@]}" --without-python
mk
mi

rm -vf "$D"/usr/lib{,32}/libxml2.la
sed '/libs=/s/xml2.*/xml2"/' -i "$D"/usr/bin/xml2-config

}