NAME="sdl2"
VERS="3.2.0"
DESC="A library for portable low-level access to a video framebuffer, audio output, mouse, and keyboard"
UPST="https://github.com/libsdl-org/SDL.git"

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

b-cfg
b-make
b-mi

b-32cfg
b-make
b-32mi

rm -v "$D"/usr/lib{,32}/libSDL2*.{,l}a

}
