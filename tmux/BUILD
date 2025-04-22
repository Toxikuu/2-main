NAME="tmux"
VERS="b4f8340f16fc6e0108f9af5ef7d4ee093eac8a8c"
DESC="Terminal multiplexer"
CATG="tui"
UPST="https://github.com/tmux/tmux.git"
DEPS=(
    "libevent"
    "ncurses"
)

SOURCE="${UPST%.git}/archive/$VERS.tar.gz"
EXTRA=()

2b() {
 
./autogen.sh

cfg --disable-systemd
mk
mi

}