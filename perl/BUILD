NAME="perl"
VERS="5.40.0" # latest release
DESC="The Practical Extraction and Report Language"
UPST="https://github.com/Perl/perl5.git"

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

b-make
b-mi

unset BUILD_ZLIB BUILD_BZIP2

}
