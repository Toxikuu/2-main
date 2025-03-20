NAME="libjpeg-turbo"
VERS="3.1.0"
DESC="Fast library for handling JPEG images"
CATG="lib"
UPST="https://github.com/$NAME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "cmake"
    "yasm"
)

SOURCE="https://github.com/$NAME/$NAME/releases/download/$VERS/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake

_cfg_opts=(
    -D ENABLE_STATIC=FALSE
    -D CMAKE_INSTALL_DEFAULT_LIBDIR=lib
)

cm ${_cfg_opts[@]} \
    -G "Unix Makefiles" # override cm abstraction's ninja default
mk
mi

}