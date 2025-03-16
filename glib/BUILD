NAME="glib"
VERS="2.84.0"
GOBJV="1.84.0"
DESC="Low level core library"
UPST="https://github.com/GNOME/glib.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep -B1 'EAZEL-NAUTILUS-MS-AUG07' | head -n1 | sed 's@.*/@@'"

SOURCE="https://download.gnome.org/sources/glib/${VERS%.*}/glib-$VERS.tar.xz"
EXTRA=(
    "https://download.gnome.org/sources/gobject-introspection/${GOBJV%.*}/gobject-introspection-$GOBJV.tar.xz"
    "https://glfs-book.github.io/glfs/patches/glib/glib-skip_warnings-1.patch"
)

2b() {

with meson ninja

# optional log level selection patch
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
ni

# ty @seal331
spoof_pc() {
    mkdir -pv "$BLD"/pkgconfigtmp
    for pc in "$D"/usr/lib/pkgconfig/*.pc; do
        base="$(basename "$pc")"
        echo "Copying pkgconfig file: $base" >&2
        cp -vf "$pc" "$BLD/pkgconfigtmp/$base"
    done
    # spoofing the prefix to destdir to satisfy meson
    echo "Spoofing pkgconfig files..." >&2
    sed "1s@prefix=@prefix=$D@" -i "$BLD"/pkgconfigtmp/*.pc
}

# spoof pkgconfig files that are expected to exist at /usr/lib/pkgconfig (but which currently exist in $D)
spoof_pc

tar xf "$SRC"/gobject-introspection-$GOBJV.tar.*z*

# build gobject-introspection
# if pkg_config_libdir is set, glib can't find stuff and tries to vendor its own
export PKG_CONFIG_PATH="$BLD/pkgconfigtmp" # export is necessary for some fucking reason ???
meson setup gobject-introspection-$GOBJV gi-build \
    --prefix=/usr --buildtype=release
nj -C gi-build
ni -C gi-build

# # done again so that the glib rebuild can find gobject-introspection pc files
# spoof_pc
# this is so incredibly fucking stupid but meson refuses to accept the PKG_CONFIG_PATH variable
cp -vf "$D"/usr/lib/pkgconfig/*.pc /usr/lib/pkgconfig/

# rebuild glib with gobject-introspection
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
#d gobject-introspection: 1.82.0 -> 1.84.0
