NAME="automake"
VERS="1.17"
CATG="core"
DESC="Programs for generating Makefiles for use with Autoconf"
UPST="https://git.savannah.gnu.org/git/automake.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]+' | cut -dv -f2 | grep -Ev '[a-z]' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/automake/automake-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

}
