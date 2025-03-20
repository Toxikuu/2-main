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

}

2i() {

tldr --update

}