NAME="meson"
VERS="1.7.0"
DESC="Fast, user-friendly build system"
UPST="https://github.com/mesonbuild/meson.git"

SOURCE="https://github.com/mesonbuild/meson/releases/download/$VERS/meson-$VERS.tar.gz"
EXTRA=()

2b() {

with pip

pipb
pipi meson

install -vDm644 data/shell-completions/bash/meson "$D"/usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson "$D"/usr/share/zsh/site-functions/_meson

cp -av {"$PORT"/usr,"$D"}

}
