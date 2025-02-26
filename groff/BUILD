NAME="groff"
VERS="1.23.0"
CATG="core"
DESC="Programs for processing and formatting text and images"
UPST="https://git.savannah.gnu.org/git/groff.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^[0-9]+' | grep -Ev '[a-z]+' | tail -n1"

SOURCE="https://ftp.gnu.org/gnu/groff/groff-$VERS.tar.gz"
EXTRA=()

2b() {

PAGE="letter" cfg
mk
mi

}
