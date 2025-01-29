NAME="xml-parser"
VERS="2.47"
DESC="A Perl interfact to Expat"
UPST="https://github.com/cpan-authors/XML-Parser.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@^v@@' -e 's@_@.@g' | sort -V | tail -n1"

SOURCE="https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-$VERS.tar.gz"
EXTRA=()

2b() {

perl Makefile.PL
b-make
b-mi

}
