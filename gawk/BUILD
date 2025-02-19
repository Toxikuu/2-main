NAME="gawk"
VERS="5.3.1"
DESC="Programs for manipulating text files"
UPST="https://git.savannah.gnu.org/git/gawk.git"

SOURCE="https://ftp.gnu.org/gnu/gawk/gawk-$VERS.tar.xz"
EXTRA=()

2b() {

tsed -i 's/extras//' Makefile.in
cfg
mk
mi

ln -sv gawk.1 "$D"/usr/share/man/man1/awk.1
install -vDm644 doc/{awkforai.txt,*.{eps,pdf,jpg}} -t "$D"/usr/share/doc/gawk-$VERS

}