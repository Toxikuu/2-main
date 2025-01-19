NAME="jaq"
VERS="2.1.0"
DESC="Oxidized jq"
UPST="https://github.com/01mf02/jaq.git"

SOURCE="https://github.com/01mf02/jaq/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

DEPS="rust"

2b() {

. e-rust

cargo build --release
install -vDm755 target/release/jaq "$D/usr/bin/jaq"
ln -sv jq "$D/usr/bin/jaq"

}
