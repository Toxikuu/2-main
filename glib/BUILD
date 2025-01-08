NAME="glib"
VERS="2.82.4"
GOBJV="1.82.0"
DESC="Low level core library"
UPST="https://github.com/GNOME/glib.git"

SOURCE="https://download.gnome.org/sources/glib/${VERS%.*}/glib-$VERS.tar.xz"
EXTRA=(
    "https://download.gnome.org/sources/gobject-introspection/${GOBJV%.*}/gobject-introspection-$GOBJV.tar.xz"
)

2b() {

if [ -e /usr/include/glib-2.0 ]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi

mkdir -pv build
cd        build

_cfg_opts=(
    -D introspection=disabled
    -D glib_debug=disabled
    -D man-pages=disabled
    -D tests=false
    -D sysprof=disabled
)

CP=.. b-ms "${_cfg_opts[@]}"
b-ninja
b-ni

cp -av {"$D",}/usr/include/glib-2.0 # annoying but i cant think of a better fix
tar xf "$SRC"/gobject-introspection-$GOBJV.tar.xz
meson setup gobject-introspection-$GOBJV gi-build \
    --prefix=/usr --buildtype=release
b-ninja -C gi-build

b-ni -C g-build

meson configure -D introspection=enabled
b-ninja
b-ni

rm -rf *
CP=.. b-32ms \
    --cross-file lib32 \
    "${_cfg_opts[@]}"

b-ninja
b-32ni

}
