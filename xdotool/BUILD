NAME="xdotool"
VERS="3.20211022.1"
DESC="Fake keyboard/moouse input and window management for X"
CATG="utils"
UPST="https://github.com/jordansissel/xdotool.git"
DEPS=(
    "libxinerama"
    "libxkbcommon"
    "libxtst"
)

SOURCE="https://github.com/jordansissel/xdotool/releases/download/v$VERS/xdotool-$VERS.tar.gz"
EXTRA=()

2b() {

mk WITHOUT_RPATH_FIX=1
mi PREFIX=/usr INSTALLMAN=/usr/share/man

}
