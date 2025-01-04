NAME="grep"
VERS="3.11"
DESC="String search utility"
UPST="https://git.savannah.gnu.org/git/grep.git"

SOURCE="https://ftp.gnu.org/gnu/grep/grep-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr \
    --disable-rpath       \
    --disable-perl-regexp
b-make
b-mi

}
