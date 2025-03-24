NAME="giflib"
VERS="5.2.2"
DESC="GIF libraries and utilities"
CATG="lib img"
UPST="https://git.code.sf.net/p/giflib/code"
DEPS=(
    "xmlto"
)

SOURCE="https://sourceforge.net/projects/giflib/files/giflib-$VERS.tar.gz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/blfs/svn/giflib-$VERS-upstream_fixes-1.patch"
)

2b() {

tpatch "$SRC"/giflib-$VERS-upstream_fixes-1.patch

# avoid an unnecessary dependency on imagemagick
cp pic/gifgrid.gif doc/giflib-logo.gif

mk
mi PREFIX=/usr

rm -vf "$D"/usr/lib/libgif.a

find doc \( -name Makefile\* -o -name \*.1 \
         -o -name \*.xml \) -exec rm -v {} \;

install -vdm755 "$D"/usr/share/doc/giflib
cp -vR doc/ "$D"/usr/share/doc/giflib


}
