NAME="rg"
VERS="14.1.1"
DESC="Grep but in rust"
CATG="cli"
UPST="https://github.com/BurntSushi/ripgrep.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "rust"
    "pcre2"
)

SOURCE="https://github.com/BurntSushi/ripgrep/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

with rust
cbr --features 'pcre2'

install -vDm755 target/release/rg "$D/usr/bin/rg"

mkdir -pv "$D/usr/share/zsh/site-functions"
target/release/rg --generate complete-zsh > "$D/usr/share/zsh/site-functions/_rg"

mkdir -pv "$D/usr/share/bash-completion/completions"
target/release/rg --generate complete-bash > "$D/usr/share/bash-completion/completions/rg"

mkdir -pv "$D/usr/share/fish/vendor_completions.d"
target/release/rg --generate complete-fish > "$D/usr/share/fish/vendor_completions.d/rg.fish"

mkdir -pv "$D/usr/share/man/man1"
target/release/rg --generate man >  "$D/usr/share/man/man1/rg.1"

install -vDm644 "README.md" "$D/usr/share/doc/rg/README.md"

}
#d fixed vcmd
