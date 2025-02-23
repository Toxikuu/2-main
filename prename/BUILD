NAME="prename"
VERS="1.14"
DESC="Perl's rename"
CATG="utils fs"
UPST="https://search.cpan.org/~pederst/rename"
VCMD="curl -sL '$UPST' | head -n8 | grep rename- | cut -d- -f2"
DEPS=(
    "perl"
)

SOURCE="https://search.cpan.org/CPAN/authors/id/P/PE/PEDERST/rename-$VERS.tar.gz"
EXTRA=()

2b() {

perl Makefile.PL PREFIX=/usr
mk
mi

}
