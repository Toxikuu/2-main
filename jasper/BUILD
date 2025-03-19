NAME="jasper"
VERS="4.2.4"
DESC="Library for manipulating JPEG-2000 images"
CATG="lib"
UPST="https://github.com/jasper-software/jasper.git"
DEPS=(
    cmake
    libjpeg-turbo
)

SOURCE="https://github.com/jasper-software/jasper/archive/version-$VERS/jasper-version-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv BUILD
cd        BUILD

cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D JAS_ENABLE_DOC=NO            \
      -D ALLOW_IN_SOURCE_BUILD=YES    \
      .. ||
die "Cmake failed"

mk
mi

}
