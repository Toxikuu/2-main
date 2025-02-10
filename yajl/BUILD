NAME="yajl"
VERS="2.1.0"
DESC="Yet another json library"
UPST="https://github.com/lloyd/yajl.git"
DEPS="cmake"

SOURCE="https://github.com/lloyd/yajl/archive/refs/tags/$VERS.tar.gz"
EXTRA=(
    "https://gitlab.archlinux.org/archlinux/packaging/packages/yajl/-/raw/main/yajl-2.1.0-CVE-2017-16516.patch"
    "https://gitlab.archlinux.org/archlinux/packaging/packages/yajl/-/raw/main/yajl-2.1.0-CVE-2022-24795.patch"
    "https://gitlab.archlinux.org/archlinux/packaging/packages/yajl/-/raw/main/yajl-2.1.0-memory_leak.patch"
)

2b() {

b-patch "$SRC/yajl-$VERS-*.patch"

mkdir -pv build
cd        build

cmake \
  -D CMAKE_INSTALL_PREFIX=/usr      \
  -D CMAKE_BUILD_TYPE=Release       \
  -D BUILD_SHARED_LIBS=ON           \
  -D CMAKE_SKIP_INSTALL_RPATH=ON    \
  "$@"
  -W no-dev -G Ninja ..

b-ninja
b-ni

}
