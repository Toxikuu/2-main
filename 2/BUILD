NAME="2"
VERS="0.0.96"
DESC="Source-based LFS package manager"
CATG="core"
UPST="https://github.com/Toxikuu/2.git"
DEPS=(
    "rust"
    "tar"
    "zstd"
    "bash"
)

SOURCE="https://github.com/Toxikuu/2/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

cfg --disable-conf --disable-main
mk
mi

}