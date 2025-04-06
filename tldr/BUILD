NAME="tldr"
VERS="1.7.2"
DESC="A very fast implementation of tldr in Rust"
CATG="cli util"
UPST="https://github.com/tealdeer-rs/tealdeer.git"
DEPS=(
    "rust"
)

SOURCE="https://github.com/tealdeer-rs/tealdeer/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr

install -vDm755 target/release/tldr "$D/usr/bin/tldr"

install -vDm644 completions/bash_tealdeer "$D/usr/share/bash-completion/completions/tldr"
install -vDm644 completions/fish_tealdeer "$D/usr/share/fish/vendor_completions.d/tldr.fish"
install -vDm644 completions/zsh_tealdeer  "$D/usr/share/zsh/site-functions/_tldr"

# Set up global configuration and cache dirs
mkdir -pv "$D/etc/profile.d"
echo "export TEALDEER_CONFIG_DIR=/etc/tldr" > "$D/etc/profile.d/95-tldr.sh"
install -vDm644 "$PORT/config.toml" -t "$D/etc/tldr/"

}

2z() {

tldr --show-paths
tldr --update

}
#d Added completions and a config
