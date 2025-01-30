NAME="eza"
VERS="0.20.19"
DESC="Very nice replacement for ls"
UPST="https://github.com/eza-community/eza.git"

SOURCE="https://github.com/eza-community/eza/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

. e-rust

cargo build --release
install -vDm755 target/release/eza "$D/usr/bin/eza"

}
