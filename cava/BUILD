NAME="cava"
VERS="0.10.4"
DESC="Cross-platform Audio Visualizer"
CATG="tui audio"
UPST="https://github.com/karlstav/cava.git"
DEPS=(
    "fftw"
    "iniparser"
)

SOURCE="https://github.com/karlstav/cava/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

./autogen.sh

cfg \
    --disable-input-sndio \
    --disable-input-jack  \
    --disable-input-portaudio
mk
mi

}
