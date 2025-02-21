NAME="rust-bindgen"
VERS="0.71.1"
DESC="Automatically generates Rust FFI bindings to C (and some C++) libraries"
CATG="dev graphics"
UPST="https://github.com/rust-lang/rust-bindgen.git"
DEPS=(
  "llvm"
  "rust"
)

SOURCE="https://github.com/rust-lang/rust-bindgen/archive/v$VERS/rust-bindgen-$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr
install -vDm755 target/release/bindgen "$D"/usr/bin/bindgen

mkdir -pv \
    "$D"/usr/share/zsh/site-functions \
    "$D"/usr/share/bash-completion/completions

bindgen --generate-shell-completions bash \
    > "$D"/usr/share/bash-completion/completions/bindgen
bindgen --generate-shell-completions zsh  \
    > "$D"/usr/share/zsh/site-functions/_bindgen

}
