NAME="iniparser"
VERS="4.2.6"
DESC="Parser for ini files"
UPST="https://github.com/ndevilla/iniparser.git"

SOURCE="https://github.com/ndevilla/iniparser/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build

cmake -B build \
  -D CMAKE_INSTALL_PREFIX=/usr    \
  -D CMAKE_BUILD_TYPE=Release     \
  -D BUILD_SHARED_LIBS=ON         \
  -D CMAKE_SKIP_INSTALL_RPATH=ON  \
  -D BUILD_DOCS=OFF               \
  -D BUILD_EXAMPLES=OFF           \
  -D BUILD_STATIC_LIBS=OFF

cmake --build build
cd            build
b-mi

}
