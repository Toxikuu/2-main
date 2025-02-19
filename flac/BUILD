NAME="flac"
VERS="1.5.0"
DESC="Free lossless audio codec"
UPST="https://github.com/xiph/flac.git"

SOURCE="https://downloads.xiph.org/releases/flac/flac-$VERS.tar.xz"
EXTRA=()

2b() {

cfg --disable-thorough-tests
mk
mi

mk distclean

# CC="gcc -m32" CXX="g++ -m32"                  \
# CFLAGS="-L/usr/lib32" CXXFLAGS="-L/usr/lib32" \
m32=1
cfg --disable-thorough-tests
mk
mi

}
