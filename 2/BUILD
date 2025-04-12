NAME="2"
VERS="0.1.0"
DESC="Source-based LFS package manager"
CATG="core"
UPST="https://github.com/Toxikuu/2.git"
DEPS=(
    "rust"
    "tar"
    "zstd"
    "bash"

    "o^mdbook" # for docs
)

SOURCE="https://github.com/Toxikuu/2/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

with rust

_cfg_opts=(
    --disable-conf # shouldn't need updates
    --disable-main # should already exist
    $(ii mdbook &>/dev/null || echo --disable-docs)
)

cfg ${_cfg_opts[@]}
mk
mi

}
#d also improved the build script
