NAME="tmux"
VERS="d3c39375d5e9f4a0dcb5bd210c912d70ceca5de9"
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