NAME="gdbm"
VERS="1.24"
DESC="The GNU Database Manager"
UPST="https://git.savannah.gnu.org/git/gdbm.git"

SOURCE="https://ftp.gnu.org/gnu/gdbm/gdbm-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg --enable-libgdbm-compat
b-make
b-mi

b-make distclean
b-32cfg --enable-libgdbm-compat

b-make
b-32mi

}
