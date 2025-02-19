NAME="gdbm"
VERS="1.24"
DESC="The GNU Database Manager"
UPST="https://git.savannah.gnu.org/git/gdbm.git"

SOURCE="https://ftp.gnu.org/gnu/gdbm/gdbm-$VERS.tar.gz"
EXTRA=()

2b() {

cfg --enable-libgdbm-compat
mk
mi

mk distclean

m32=1
cfg --enable-libgdbm-compat
mk
mi

}
