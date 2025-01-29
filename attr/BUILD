NAME="attr"
VERS="2.5.2"
DESC="Utilities to administer filesystem object attributes"
UPST="https://git.savannah.nongnu.org/git/attr.git"

SOURCE="https://download.savannah.gnu.org/releases/attr/attr-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --sysconfdir=/etc
b-make
b-mi

b-make distclean
b-32cfg --sysconfdir=/etc

b-make
b-32mi

}
