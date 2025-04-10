NAME="autotiling"
VERS="1.9.3"
DESC="Script for sway and i3 to autotile"
CATG="wm"
UPST="https://github.com/nwg-piotr/autotiling.git"
DEPS=(
    "python"
    "i3"
    "setuptools"
    "i3ipc"
)

SOURCE="https://github.com/nwg-piotr/autotiling/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

install -vDm755 "$NAME/main.py" "$D/usr/bin/autotiling"

}
