NAME="jaq"
VERS="2.1.1"
DESC="A jq clone focussed on correctness, speed, and simplicity"
UPST="https://github.com/01mf02/jaq.git"

SOURCE="https://github.com/01mf02/jaq/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

DEPS="rust"

2b() {

with rust

cbr
install -vDm755 target/release/jaq "$D/usr/bin/jaq"
ln -sv jaq "$D/usr/bin/jq"

}
