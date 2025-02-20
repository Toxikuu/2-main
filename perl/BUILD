NAME="perl"
VERS="5.40.1"
DESC="The Practical Extraction and Report Language"
UPST="https://github.com/Perl/perl5.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E 'v[0-9]+\\.([0-9]*[02468])\\.[0-9]+' | grep -v RC | tail -n1" # even minor part means stable

MINOR="${VERS%.*}"
MAJOR="${MINOR%.*}"

SOURCE="https://www.cpan.org/src/${MAJOR}.0/perl-${VERS}.tar.gz"
EXTRA=()

2b() {

export BUILD_ZLIB=False
export BUILD_BZIP2=0

sh Configure -des                                                 \
             -D prefix=/usr                                       \
             -D vendorprefix=/usr                                 \
             -D privlib=/usr/lib/perl$MAJOR/$MINOR/core_perl      \
             -D archlib=/usr/lib/perl$MAJOR/$MINOR/core_perl      \
             -D sitelib=/usr/lib/perl$MAJOR/$MINOR/site_perl      \
             -D sitearch=/usr/lib/perl$MAJOR/$MINOR/site_perl     \
             -D vendorlib=/usr/lib/perl$MAJOR/$MINOR/vendor_perl  \
             -D vendorarch=/usr/lib/perl$MAJOR/$MINOR/vendor_perl \
             -D man1dir=/usr/share/man/man1                       \
             -D man3dir=/usr/share/man/man3                       \
             -D pager="/usr/bin/less -isR"                        \
             -D useshrplib                                        \
             -D usethreads

mk
mi

unset BUILD_ZLIB BUILD_BZIP2

}