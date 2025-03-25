NAME="strace"
VERS="6.14"
DESC="Diagnostic, debugging, and instructional userspace utility"
CATG="cli util"
UPST="https://github.com/strace/strace.git"
DEPS=(
    "libunwind"
)

SOURCE="https://github.com/strace/strace/releases/download/v$VERS/strace-$VERS.tar.xz"
EXTRA=()

2b() {

_cfg_opts=(
    --enable-mpers=no # don't build the mx32 personality
    --with-libunwind
)

cfg ${_cfg_opts[@]}
mk
mi

}