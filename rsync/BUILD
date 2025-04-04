NAME="rsync"
VERS="3.4.1"
DESC="Fast incremental file transfer"
CATG="utils cli"
UPST="https://github.com/RsyncProject/rsync.git"
DEPS=(
    "popt"
    "o^xxhash"
)

SOURCE="https://www.samba.org/ftp/rsync/src/rsync-$VERS.tar.gz"
EXTRA=()

2b() {

_cfg_opts=(
    $(ii xxhash &>/dev/null || echo --disable-xxhash)
    --without-included-zlib
)

cfg ${_cfg_opts[@]}
mk
mi

}
