NAME="vala"
VERS="0.56.18"
DESC="Compiler for the GObject type system"
CATG="lang"
UPST="https://github.com/GNOME/vala.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed -e 's@.*/@@' -e 's@_@.@g' | cut -d. -f2- | sort -V"
DEPS=(
    "glib"
    "o^graphviz" # for valadoc
)

SOURCE="https://download.gnome.org/sources/vala/${VERS%.*}/vala-$VERS.tar.xz"
EXTRA=()

2b() {

# remove the cfg flag if valadoc is wanted
cfg --disable-valadoc
mk
mi

}
