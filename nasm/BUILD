NAME="nasm"
VERS="2.16.03"
DESC="Netwide Assembler"
CATG="lang"
UPST="https://github.com/netwide-assembler/nasm.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' | grep '^nasm-' | grep -v 'rc' | tail -n1"
DEPS=()

SOURCE="https://www.nasm.us/pub/nasm/releasebuilds/$VERS/nasm-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

}
