NAME="xbindkeys"
VERS="1.8.7"
DESC="Launch shell commands with your keyboard or your mouse under X"
CATG="utils"
UPST="https://git.savannah.gnu.org/git/xbindkeys.git"
DEPS=(
    "libx11"
    "guile"
)

SOURCE="http://git.savannah.gnu.org/cgit/$NAME.git/snapshot/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

autoreconf -fiv

cfg
mk
mi

}
