NAME="prename"
VERS="1.16"
DESC="Perl's rename"
CATG="utils fs"
UPST="https://search.cpan.org/~pederst/rename"
VCMD="curl -sL '$UPST' | head -n8 | grep rename- | cut -d. -f1-2"  # 1.16.2 doesn't build(?)
DEPS=(
    "perl"
)

SOURCE="https://search.cpan.org/CPAN/authors/id/P/PE/PEDERST/rename-$VERS.tar.gz"
EXTRA=()

2b() {

perl Makefile.PL PREFIX=/usr
mk
mi

mv -vf "$D"/usr/bin/{,p}rename
mv -vf "$D"/usr/share/man/man1/{,p}rename.1

}
