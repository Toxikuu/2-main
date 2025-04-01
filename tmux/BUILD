NAME="tmux"
VERS="dfdced2ab127cad503f12895438ac9f2c9df513e"
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