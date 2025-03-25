NAME="uchardet"
VERS="0.0.8"
DESC="Encoding detector library"
CATG="lib"
UPST="https://gitlab.freedesktop.org/uchardet/uchardet.git"
DEPS=(
    "cmake"
)

SOURCE="https://www.freedesktop.org/software/uchardet/releases/uchardet-$VERS.tar.xz"
EXTRA=()

2b() {

with cmake

cm -D BUILD_STATIC=OFF -G "Unix Makefiles"
mk
mi

}
