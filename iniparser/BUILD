NAME="iniparser"
VERS="4.2.6"
DESC="Parser for ini files"
UPST="https://github.com/ndevilla/iniparser.git"

SOURCE="https://github.com/ndevilla/iniparser/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm \
  -D BUILD_DOCS=OFF               \
  -D BUILD_EXAMPLES=OFF           \
  -D BUILD_STATIC_LIBS=OFF

nj
ni

}