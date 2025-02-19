NAME="freetype"
VERS="2.13.3"
DESC="A library for rendering TTFs"
UPST="https://gitlab.freedesktop.org/freetype/freetype.git"
VCMD="git ls-remote --tags --refs '$UPST' | tsed -e 's@.*/@@' -e 's@VER-@@' -e 's@-@.@g' | grep -Ev '[a-Z]+' | sort -V | tail -n1"

SOURCE="https://downloads.sourceforge.net/project/freetype/freetype2/$VERS/freetype-$VERS.tar.xz"
EXTRA=()

2b() {

sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg
sed -ri "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" include/freetype/config/ftoption.h

[ -e "$PORT/../harfbuzz/.data/INSTALLED" ] || HB="--with-harfbuzz=no"

cfg --enable-freetype-config $HB
mk
mi

mk distclean

m32=1
cfg --enable-freetype-config $HB \
        --with-brotli=no
mk
mi

}
