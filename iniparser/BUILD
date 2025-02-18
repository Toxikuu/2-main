NAME="iniparser"
VERS="4.2.6"
DESC="Parser for ini files"
UPST="https://github.com/ndevilla/iniparser.git"

SOURCE="https://github.com/ndevilla/iniparser/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-cmake           \
  -DBUILD_DOCS=OFF      \
  -DBUILD_EXAMPLES=OFF  \
  -DBUILD_STATIC_LIBS=OFF

cmake --build ../build
b-mi

}
