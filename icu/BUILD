NAME="icu"
VERS="77.1"
DESC="International Components for Unicode"
UPST="https://github.com/unicode-org/icu.git"
VCMD="git ls-remote --tags '$UPST' | sed 's@.*/@@' | grep release- | grep -Ev 'tools-|-rc|alpha|preview' | tail -n1 | cut -d- -f2- | sed 's@-@.@'"

SOURCE="https://github.com/unicode-org/icu/releases/download/release-${VERS//./-}/icu4c-${VERS//./_}-src.tgz"
EXTRA=()

2b() {

cd source

cfg
mk
mi

mk clean
m32=1

CFLAGS="-O2 -pipe"   \
CXXFLAGS="-O2 -pipe" \
cfg

mk
mi

}
#d avoid a build failure by explicitly specifying C{,XX}FLAGS
