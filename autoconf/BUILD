NAME="autoconf"
VERS="2.72"
DESC="Programs to produce shell scripts to automatically configure source code"
UPST="https://git.savannah.gnu.org/git/autoconf.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]\.[0-9]' | grep -v '[a-k]$' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/autoconf/autoconf-$VERS.tar.xz"
EXTRA=()

2b() {

DS=1 b-cfg
b-make
b-mi

}
