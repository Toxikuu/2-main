NAME="cpio"
VERS="2.15"
DESC="Archiving tools"
CATG="util cli"
UPST="https://git.savannah.gnu.org/git/cpio.git"
DEPS=()

SOURCE="https://ftp.gnu.org/gnu/cpio/cpio-$VERS.tar.bz2"
EXTRA=()

2b() {

# documentation isn't built because i'm lazy

_cfg_opts=(
    --enable-mt # build mt (for magnetic tape drive operations)
    --with-rmt # avoid building rmt as it's provided by tar
)

cfg ${_cfg_opts[@]}
mk
mi

}
