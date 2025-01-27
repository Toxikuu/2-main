NAME="flac"
VERS="1.4.3"
DESC="Lossless audio codec"

SOURCE="https://downloads.xiph.org/releases/flac/flac-$VERS.tar.xz"
EXTRA=()

2b() {

DS=1 b-cfg --disable-thorough-tests
b-make
b-mi

b-make distclean

CC="gcc -m32" CXX="g++ -m32"                  \
CFLAGS="-L/usr/lib32" CXXFLAGS="-L/usr/lib32" \
DS=1 b-32cfg --disable-thorough-tests
b-make
b-32mi

}
