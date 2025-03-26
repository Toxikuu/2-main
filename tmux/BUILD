NAME="tmux"
VERS="9e1f110db0776ff0ca3f1b41ee3a6c8ccaf6452b"
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
