NAME="libjpeg-turbo"
VERS="3.0.1"
DESC="Fast library for handling JPEG images"
CATG="lib"
UPST="https://github.com/$NAME/$NAME.git"
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
    -G 'Unix Makefiles' # override cm abstraction's ninja default
)

cm ${_cfg_opts[@]}
mk
mi

}
