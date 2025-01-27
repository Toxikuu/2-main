NAME="grep"
VERS="3.11"
DESC="String search utility"

SOURCE="https://ftp.gnu.org/gnu/grep/grep-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i "s/echo/#echo/" src/egrep.sh

DS=1 b-cfg \
    --disable-rpath \
    --disable-perl-regexp
b-make
b-mi

}
