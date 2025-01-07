NAME="expat"
VERS="2.6.4"
DESC="XML parsing library"
UPST="https://github.com/libexpat/libexpat.git"

SOURCE="https://prdownloads.sourceforge.net/expat/expat-$VERS.tar.xz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

sed -e "/^am__append_1/ s/doc//" -i Makefile
b-make clean

b-32cfg
b-make
b-32mi

}
