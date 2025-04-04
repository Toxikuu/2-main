# I fucking hate glib. If you're able to make this build script function
# without touching the host system, please do. I've spent weeks failing.
NAME="glib"
VERS="2.84.1"
GOBJV="1.84.0"
DESC="Low level core library"
UPST="https://github.com/GNOME/glib.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep -B1 'EAZEL-NAUTILUS-MS-AUG07' | head -n1 | sed 's@.*/@@'"

SOURCE="https://download.gnome.org/sources/glib/${VERS%.*}/glib-$VERS.tar.xz"
EXTRA=(
    "https://download.gnome.org/sources/gobject-introspection/${GOBJV%.*}/gobject-introspection-$GOBJV.tar.xz"
    "https://glfs-book.github.io/glfs/patches/glib/glib-2.84.0-upstream_fixes-1.patch"
    "https://glfs-book.github.io/glfs/patches/glib/glib-skip_warnings-1.patch"
)

2b() {

with meson ninja

# optional log level selection patch
tpatch "$SRC"/glib-2.84.0-upstream_fixes-1.patch
tpatch "$SRC"/glib-skip_warnings-1.patch

restore() {
    if [[ -e /usr/include/glib-2.0.old && ! -e /usr/include/glib-2.0 ]]; then
        mv -vf /usr/include/glib-2.0{.old,}
    fi
}

# move headers out of the way to avoid potential conflicts
if [[ -e /usr/include/glib-2.0 ]]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi

# i'd use err, but exit should account for the case where the new headers aren't in place
trap restore EXIT

_cfg_opts=(
    -D glib_debug=disabled
    -D dtrace=disabled
    -D man-pages=disabled
    -D tests=false
    -D sysprof=disabled
    -D selinux=disabled
    -D systemtap=disabled
)

# initial build of glib without gobject-introspection
mkdir build
cd    build
meson setup ..            \
    --prefix=/usr         \
    --buildtype=release   \
    ${_cfg_opts[@]}       \
    -D introspection=disabled ||
die "Meson setup failed"

nj
nj install # YES THIS IS INTENDED; YES THIS FUCKING SUCKS

tar xf "$SRC"/gobject-introspection-$GOBJV.tar.*z*

meson setup gobject-introspection-$GOBJV gi-build \
    --prefix=/usr --buildtype=release -D tests=false
nj -C gi-build
ni -C gi-build
nj install -C gi-build # install g-ir bullshit to the host too

meson setup ..          \
    --prefix=/usr       \
    --buildtype=release \
    ${_cfg_opts[@]}     \
    -D introspection=enabled ||
die "Failed to reconfigure glib to use introspection"
nj
ni

unset PKG_CONFIG_PATH
m32=1
cd "$BLD"

# build lib32 glib without gobject-introspection
ms --cross-file lib32 \
    ${_cfg_opts[@]}   \
    -D introspection=disabled
nj
ni

}
