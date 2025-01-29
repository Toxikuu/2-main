NAME="intltool"
VERS="0.51.0"
DESC="Internationalization tool for extracting translatable strings from source files"
UPST="https://salsa.debian.org/gnome-team/intltool.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | cut -d- -f1 | uniq | tail -n1"

SOURCE="https://launchpad.net/intltool/trunk/$VERS/+download/intltool-$VERS.tar.gz"
EXTRA=()

2b() {

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr
b-make
b-mi

install -vDm644 doc/I18N-HOWTO "$D"/usr/share/doc/intltool-$VERS/I18N-HOWTO

}
