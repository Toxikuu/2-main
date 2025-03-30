NAME="ffmpeg"
VERS="7.1.1"
DESC="Play, record, convert, and stream audio and video"
CATG="audio video utils cli"
UPST="https://git.ffmpeg.org/ffmpeg.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' | grep '^n[0-9]' | grep -v 'dev' | cut -c2- | tail -n1"
DEPS=(
    "libaom"
    "libass"
    "fdk-aac"
    "freetype"
    "lame"
    "libvorbis"
    "libvpx"
    "libdrm"
    "opus"
    "x264"
    "x265"
    "yasm"
    "alsa-lib"
    "libva"
    "sdl2"
    "pulseaudio"
)

SOURCE="https://ffmpeg.org/releases/ffmpeg-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/blfs/svn/ffmpeg-$VERS-chromium_method-1.patch"
)

2b() {

tpatch "$SRC"/ffmpeg-$VERS-chromium_method-1.patch

# fix an issue with x265=4.1
sed -e 's/X265_BUILD >= 210/(&) \&\& (X265_BUILD < 213)/' \
    -i libavcodec/libx265.c

_cfg_opts=(
    --enable-gpl
    --enable-lto
    --enable-version3
    --enable-nonfree
    --enable-shared
    --disable-rpath
    --disable-debug

    --enable-libaom
    --enable-libass
    --enable-libpulse
    --enable-libfdk-aac
    --enable-libfreetype
    --enable-libmp3lame
    --enable-libopus
    --enable-libvorbis
    --enable-libvpx
    --enable-libx26{4,5}
    --enable-openssl
    --enable-libdrm

    --disable-doc
    --disable-large-tests
    --ignore-tests=enhanced-flv-av1
)

cfg ${_cfg_opts[@]}
mk
mi

# quicktime utility not qt
gcc tools/qt-faststart.c -o tools/qt-faststart
install -vDm755 tools/qt-faststart -t "$D"/usr/bin

install -vDm644 doc/*.txt -t "$D"/usr/share/doc/ffmpeg

}
