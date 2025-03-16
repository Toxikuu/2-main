NAME="libtiff"
VERS="4.7.0"
DESC="Libraries and utilities for handling TIFF images"
CATG="lib util"
UPST="https://gitlab.com/libtiff/libtiff.git"
DEPS=(
    "cmake"
    "o^libjpeg-turbo"
    "o^libwebp"
)

SOURCE="https://download.osgeo.org/libtiff/tiff-$VERS.tar.gz"
EXTRA=()

2b() {

with ninja

mkdir -pv $NAME-build
cd        $NAME-build

cmake \
    -D CMAKE_INSTALL_PREFIX=/usr \
    -D tiff-tests=OFF \
    -G Ninja ..

nj
ni

}
#d made it build
