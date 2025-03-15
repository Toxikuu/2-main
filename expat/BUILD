NAME="expat"
VERS="2.7.0"
CATG="core"
DESC="XML parsing library"
UPST="https://github.com/libexpat/libexpat.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's:.*/::' | sort -V | grep -B 1 V1_0 | head -n1 | cut -d_ -f2- | sed 's/_/./g'"

SOURCE="https://prdownloads.sourceforge.net/expat/expat-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

sed -e "/^am__append_1/ s/doc//" -i Makefile
mk clean

m32=1
cfg
mk
mi

}