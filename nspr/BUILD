NAME="nspr"
VERS="4.36"
DESC="Netscape Portable Runtime"

SOURCE="https://archive.mozilla.org/pub/nspr/releases/v$VERS/src/nspr-$VERS.tar.gz"
EXTRA=()

2b() {

cd nspr

sed -i '/^RELEASE/s|^|#|' pr/src/misc/Makefile.in
sed -i 's|$(LIBRARY) ||'  config/rules.mk

DS=1 b-cfg --with-mozilla \
    --with-pthreads       \
    $([ $(uname -m) = x86_64 ] && echo --enable-64bit)
b-make
b-mi

b-make distclean

b-32cfg --disable-64bit \
        --with-pthreads \
        --with-mozilla 
b-make
b-32mi

}
