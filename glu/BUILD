NAME="glu"
VERS="9.0.3"
DESC="Mesa OpenGL Utility library"
CATG="lib graphics"
UPST="https://gitlab.freedesktop.org/mesa/glu.git"
DEPS=(
    "mesa"
)

SOURCE="https://archive.mesa3d.org/glu/glu-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

ms -D gl_provider=gl
nj
ni

rm -vf "$D/usr/lib/libGLU.a"

}
