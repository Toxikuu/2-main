NAME="rust"
VERS="9999"
DESC="The Rust programming language"

2b() {

. e-rust
RSUP="$CARGO_HOME/bin/rustup"

if [ "$VERS" = "9999" ]; then
    export VERS="nightly"
fi

export CARGO_HOME="$D"/opt/cargo
export RUSTUP_HOME="$D"/opt/rustup

mkdir -pv "$CARGO_HOME" "$RUSTUP_HOME"

if ! command -v "$RSUP" &> /dev/null; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
    RSUP="$CARGO_HOME/bin/rustup"
fi

. "$CARGO_HOME"/env
"$RSUP" toolchain install "$VERS"
"$RSUP" default "$VERS"
"$RSUP" component add cargo clippy rustfmt

# mkdir -pv "$D"/usr/share/bash-completion/completions
# mv -vf /etc/bash_completion.d/cargo "$D"/usr/share/bash-completion/completions

rm -vf "$CARGO_HOME"/env

chmod 777 "$CARGO_HOME"
chmod 755 "$RUSTUP_HOME"

}
