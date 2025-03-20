NAME="little-cms"
VERS="2.17"
DESC="Little color management system supporting ICC profiles"
CATG=""
UPST="https://github.com/mm2/Little-CMS.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,lcms,,' | grep -Ev 'rc|-' | sort -V | tail -n1"
DEPS=(
    "o^libjpeg-turbo"
    "o^libtiff"
)

SOURCE="https://github.com/mm2/Little-CMS/releases/download/lcms$VERS/lcms2-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

}
