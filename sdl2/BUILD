NAME="sdl2"
VERS="2.32.4"
DESC="A library for portable low-level access to a video framebuffer, audio output, mouse, and keyboard"
UPST="https://github.com/libsdl-org/SDL.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^release-2' | cut -d- -f2 | sort -V | tail -n1"

SOURCE="https://www.libsdl.org/release/SDL2-$VERS.tar.gz"
EXTRA=()

DEPS=(
    "libxkbcommon"
    "wayland-protocols"
    "libxext"
    "libxrender"
    "libx11"
    "libxcursor"
    "libxrandr"
    "libxinerama"
    "libxss"
    "alsa-lib"
)

2b() {

cfg
mk
mi

m32=1
mk distclean

cfg
mk
mi

rm -v "$D"/usr/lib{,32}/libSDL2*.{,l}a

}