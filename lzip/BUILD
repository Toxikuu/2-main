NAME="lzip"
VERS="1.25"
DESC="A lossless file compressor based on the LZMA algorithm"
UPST="http://download.savannah.gnu.org/releases/lzip/?C=M&O=D"
VCMD="curl -s '$UPST' | grep 'lzip-' | head -n1 | cut -d- -f2 | cut -d. -f1-3 | sed 's@.tar.*@@'"

SOURCE="http://download.savannah.gnu.org/releases/lzip/lzip-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

}
