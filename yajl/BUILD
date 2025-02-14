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

for patch in "$SRC/yajl-$VERS-"*.patch; do
    b-patch "$patch"
done

mkdir -pv build
cd        build

CP=.. b-cmake
b-ninja
b-ni

}
