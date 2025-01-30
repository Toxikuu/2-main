NAME="nspr"
VERS="4.36"
DESC="Netscape Portable Runtime"
UPST="https://gitlab.archlinux.org/archlinux/packaging/packages/nspr.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | sort -V | cut -d- -f1 | tail -n1"

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
