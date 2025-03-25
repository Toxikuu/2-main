NAME="wezterm"
VERS="a87358516004a652ad840bc1661bdf65ffc89b43"
DESC="Wez's GPU-accelerated, cross-platform terminal emulator and multiplexer"
CATG="term gui"
UPST="https://github.com/wez/wezterm.git"
DEPS=(
    "bash"
    "fontconfig"
    "git"
    "glib"
    "glibc"
    "libssh2"
    "libx11"
    "libxcb"
    "libxkbcommon"
    "openssl"
    "wayland"
    "xcb-util"
    "xcb-util-image"
    "xcb-util-keysyms"
    "xcb-util-wm"
    "zlib"
    "rust"
)

SOURCE=""
EXTRA=()

2b() {

with rust

if [[ -d .git ]]; then
    git pull
else
    git clone --depth=1 --single-branch --branch=main --recursive "$UPST" .
fi

git submodule update --init --recursive

LIBSSH2_SYS_USE_PKG_CONFIG=1 cbr --features distro-defaults

# install all the things
install -vDm755 target/release/$NAME              -t  "$D"/usr/bin
install -vDm755 target/release/$NAME-gui          -t  "$D"/usr/bin
install -vDm755 target/release/$NAME-mux-server   -t  "$D"/usr/bin
install -vdm755 target/release/strip-ansi-escapes -t  "$D"/usr/bin


install -vDm644 assets/icon/terminal.png              "$D"/usr/share/icons/hicolor/128x128/apps/org.wezfurlong.$NAME.png
install -vDm644 assets/$NAME.desktop                  "$D"/usr/share/applications/org.wezfurlong.$NAME.desktop
install -vDm644 assets/$NAME.appdata.xml              "$D"/usr/share/metainfo/org.wezfurlong.$NAME.appdata.xml
# install -vDm644 assets/$NAME-nautilus.py              "$D"/usr/share/nautilus-python/extensions/$NAME-nautilus.py  # 2 doesn't package nautilus, so skip
install -vDm755 assets/open-$NAME-here            -t  "$D"/usr/bin

install -vDm644 README.md                         -t  "$D"/usr/share/doc/$NAME

install -vDm644 assets/shell-completion/bash          "$D"/usr/share/bash-completion/completions/$NAME
install -vDm644 assets/shell-completion/fish          "$D"/usr/share/fish/vendor_completions.d/$NAME.fish
install -vDm644 assets/shell-completion/zsh           "$D"/usr/share/zsh/site-functions/_$pkgname
install -vDm644 assets/shell-integration/$NAME.sh -t  "$D"/etc/profile.d

}
