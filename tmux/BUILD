NAME="tmux"
VERS="ac2779f4d8e56531ed076e57c738ebd28737cc42"
DESC="Terminal multiplexer"
CATG="tui"
UPST="https://github.com/tmux/tmux.git"
DEPS=(
    "libevent"
    "ncurses"
)

SOURCE="${UPST/.git//}/archive/$VERS.tar.gz"
EXTRA=()

2b() {
 
./autogen.sh

cfg --disable-systemd
mk
mi

}