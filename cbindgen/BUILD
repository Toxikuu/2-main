NAME="cbindgen"
VERS="0.28.0"
DESC="Tool for generating C bindings from Rust code"
CATG="dev graphics"
UPST="https://github.com/mozilla/cbindgen.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep '^v[0-9]' | sort -V | tail -n1"
DEPS=(
  "rust"
)

SOURCE="https://github.com/mozilla/cbindgen/archive/v$VERS/cbindgen-$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cbr
install -vDm755 target/release/cbindgen "$D"/usr/bin/cbindgen

}
