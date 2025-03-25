NAME="mpv"
VERS="0.40.0"
DESC="Free, open source, cross-platform media player"
CATG="audio video utils"
UPST="https://github.com/mpv-player/mpv.git"
DEPS=(
    "alsa-lib"
    "ffmpeg"
    "libass"
    "libplacebo"
    "pulseaudio"
    "libjpeg-turbo"
    "libva"
    "libvdpau"
    "luajit"
    "uchardet"
    "vulkan-loader"
    "o^sdl2"

    "gtk3: for the icon cache"
    "desktop-file-utils: for the desktop cache"
)

SOURCE="https://github.com/mpv-player/mpv/archive/v$VERS/mpv-$VERS.tar.gz"
EXTRA=()

2b() {

with meson ninja

# fix a build failure with ffmpeg > 7.0
sed -i 's/AV_OPT_TYPE_CHANNEL_LAYOUT/AV_OPT_TYPE_CHLAYOUT/' filters/f_lavfi.c

_cfg_opts=(
    -D x11=enabled
    -D wayland=enabled

    -D libmpv=true
    -D cplugins=enabled
    -D lua=enabled
    -D cplayer=true
    -D javascript=disabled

    -D tests=false
    -D build-date=false
    -D fuzzers=false

    -D dvbin=disabled
    -D libbluray=disabled
    -D cdda=disabled
    -D dvdnav=disabled

    -D win32-threads=disabled
    -D win32-smtc=disabled
    -D macos-10-15-4-features=disabled
    -D macos-11-features=disabled
    -D macos-11-3-features=disabled
    -D macos-12-features=disabled
    -D macos-cocoa-cb=disabled
    -D macos-media-player=disabled
    -D macos-touchbar=disabled
    -D swift-build=disabled
)

ms  ${_cfg_opts[@]}      
nj
ni

}

2z() {

gtk-update-icon-cache -qtf /usr/share/icons/hicolor
update-desktop-database -q

}
