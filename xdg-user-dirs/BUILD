NAME="xdg-user-dirs"
VERS="0.18"
DESC="Manage common user directories"
CATG="xdg"
UPST="https://gitlab.freedesktop.org/xdg/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v '[a-Z]' | tail -n1"
DEPS=()

SOURCE="https://user-dirs.freedesktop.org/releases/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

cfg --sysconfdir=/etc --disable-documentation
mk
mi

}
