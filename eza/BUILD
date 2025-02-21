NAME="eza"
VERS="0.20.22"
DESC="Very nice replacement for ls"
UPST="https://github.com/eza-community/eza.git"

SOURCE="https://github.com/eza-community/eza/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr
install -vDm755 target/release/eza "$D/usr/bin/eza"

}