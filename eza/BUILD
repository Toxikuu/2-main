NAME="eza"
VERS="5fdeb19d45d0763e41b2d843b438ef4709d14ad9"
DESC="Very nice replacement for ls"
UPST="https://github.com/eza-community/eza.git"

SOURCE="https://github.com/eza-community/eza/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

tpatch "$PORT/icons.patch"

cbr
install -vDm755 target/release/eza "$D/usr/bin/eza"

}
#d use HEAD for icons.patch
