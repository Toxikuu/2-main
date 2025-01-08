NAME="desktop-file-utils"
VERS="0.28"
DESC="Command line utilities for working with desktop entries"
UPST="https://gitlab.freedesktop.org/xdg/desktop-file-utils.git"

SOURCE="https://www.freedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.28.tar.xz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-ms
b-ninja
b-ni

}

2z() {

install -vdm755 /usr/share/applications
update-desktop-database /usr/share/applications

}
