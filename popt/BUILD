NAME="popt"
VERS="1.19"
DESC="Libraries for parsing command-line options"
UPST="https://github.com/rpm-software-management/popt.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E 'popt-[0-9]+\\.[0-9]+-release' | cut -d- -f2 | tail -n1"

SOURCE="https://ftp.osuosl.org/pub/rpm/popt/releases/popt-${VERS%.*}.x/popt-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

}
