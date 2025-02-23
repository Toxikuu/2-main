NAME="glib"
VERS="2.83.4"
GOBJV="1.82.0"
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

tpatch "$SRC"/glib-skip_warnings-1.patch

restore() {
    [[ -e /usr/include/glib-2.0.old ]] &&
    mv -vf /usr/include/glib-2.0{.old,}
}

if [ -e /usr/include/glib-2.0 ]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi

trap restore EXIT

_cfg_opts=(
    -D introspection=disabled
    -D glib_debug=disabled
    -D dtrace=disabled
    -D man-pages=disabled
    -D tests=false
    -D sysprof=disabled
    -D selinux=disabled
    -D systemtap=disabled
)

mkdir build
cd    build
meson setup ..            \
    --prefix=/usr         \
    --buildtype=release   \
    ${_cfg_opts[@]}      ||
die "Meson setup failed"

nj
ni

nj install # fuck gnome
# this satisfies gobject-introspection pkgconfig which wants glib
# this is not at all optimal but gnome enjoys making my life difficult

# cp -av {"$D",}/usr/include/glib-2.0 # annoying but painless

# ty @seal331
# mkdir -pv "$BLD"/pkgconfigtmp
# for pc in "$PORT"/*.pc; do
#     pc=$(basename "$pc")
#     echo "Copying over vendored pkgconfig file: $pc" >&2
#     cp -vf {"$PORT","$BLD/pkgconfigtmp"}/"$pc"
# done
# echo "Spoofing pkgconfig files..." >&2
# sed "1s@prefix=@prefix=$D@" -i "$BLD"/pkgconfigtmp/g*-2.0.pc

tar xf "$SRC"/gobject-introspection-$GOBJV.tar.*z*

# PKG_CONFIG_PATH="$BLD/pkgconfigtmp" \
meson setup gobject-introspection-$GOBJV gi-build \
    --prefix=/usr --buildtype=release
nj -C gi-build
ni -C gi-build

meson configure -D introspection=enabled
nj
ni

m32=1
cd "$BLD"
ms "${_cfg_opts[@]}" \
    --cross-file lib32

nj
ni

}