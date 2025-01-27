NAME="gawk"
VERS="5.3.1"
DESC="Programs for manipulating text files"

SOURCE="https://ftp.gnu.org/gnu/gawk/gawk-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i 's/extras//' Makefile.in
b-cfg
b-make
b-mi

ln -sv gawk.1 "$D"/usr/share/man/man1/awk.1
install -vDm644 doc/{awkforai.txt,*.{eps,pdf,jpg}} -t "$D"/usr/share/doc/gawk-$VERS

}
