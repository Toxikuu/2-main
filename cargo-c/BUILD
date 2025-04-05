NAME="cargo-c"
VERS="0.10.12"
DESC="A cargo subcommand to build and install C-ABI compatibile dynamic and static libraries"
UPST="https://github.com/lu-zero/cargo-c.git"

SOURCE="https://github.com/lu-zero/cargo-c/archive/v$VERS/cargo-c-$VERS.tar.gz"
EXTRA=()

DEPS="rust"

2b() {

with rust

[ ! -e /usr/include/libssh2.h ] || export LIBSSH2_SYS_USE_PKG_CONFIG=1
[ ! -e /usr/include/sqlite3.h ] || export LIBSQLITE3_SYS_USE_PKG_CONFIG=1
cbr

install -vDm755 target/release/cargo-{capi,cbuild,cinstall,ctest} -t "$D"/usr/bin/

}