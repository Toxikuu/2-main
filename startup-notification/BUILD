NAME="startup-notification"
VERS="0.12"
DESC="Libary to monitor and display application startup"
CATG="lib"
UPST="https://gitlab.freedesktop.org/xdg/$NAME/" # trailing slash because of a redirect(?)
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@_@.@g' | cut -d. -f3- | sort -V | tail -n1"
DEPS=(
    "libx11"
    "libxcb"
    "xcb-util"
)

SOURCE="https://www.freedesktop.org/software/$NAME/releases/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

install -vDm644 doc/startup-notification.txt "$D"/usr/share/doc/$NAME-$VERS/$NAME.txt

}
