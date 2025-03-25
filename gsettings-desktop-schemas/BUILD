NAME="gsettings-desktop-schemas"
VERS="48.0"
DESC="Collection of GSettings schemas"
CATG="lib"
UPST="https://gitlab.gnome.org/GNOME/$NAME.git"
DEPS=( "glib" )

SOURCE="https://download.gnome.org/sources/$NAME/${VERS%.*}/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

# fix deprecated entries in schema templates
sed -i -r 's:"(/system):"/org/gnome\1:g' schemas/*.in

ms
nj
ni

}

2z() {

glib-compile-schemas /usr/share/glib-2.0/schemas

}
