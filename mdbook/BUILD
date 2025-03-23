NAME="mdbook"
VERS="0.4.47"
DESC="Create a book from markdown files"
CATG="doc"
UPST="https://github.com/rust-lang/mdBook.git"
DEPS=(
    "rust"
)

SOURCE="https://github.com/rust-lang/mdBook/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr
install -vDm755 target/release/mdbook -t "$D"/usr/bin/

}
