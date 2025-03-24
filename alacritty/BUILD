NAME="alacritty"
VERS="0.15.1"
DESC="Cross-platform OpenGL terminal emulator"
CATG="gui term"
UPST="https://github.com/alacritty/alacritty.git"
DEPS=(
    "rust"
    "ncurses"
    "libxcb"
    "freetype"
    "fontconfig"
    "libxi"
    "libxcursor"
    "libxkbcommon"
    "libxrandr"
    "desktop-file-utils"
)

SOURCE="https://github.com/alacritty/alacritty/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr --no-default-features --features=x11,wayland

install -vDm755 target/release/alacritty "$D"/usr/bin/alacritty
install -vDm755 extra/logo/alacritty-term.svg "$D"/usr/share/pixmaps/Alacritty.svg
desktop-file-install -vm644 --dir "$D"/usr/share/applications extra/linux/Alacritty.desktop

}

2z() {

update-desktop-database

}
#d typo
