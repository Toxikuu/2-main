NAME="libepoxy"
VERS="1.5.10"
DESC="OpenGL function pointer management library"
CATG="graphics"
UPST="https://github.com/anholt/libepoxy.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's,v,,' | sort -V | tail -n1"
DEPS=(
    "mesa"
    "libx11"
    "o^libglvnd"
)

SOURCE="https://download.gnome.org/sources/libepoxy/${VERS%.*}/libepoxy-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms
nj
ni

}
