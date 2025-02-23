NAME="glib"
VERS="2.83.4"
GOBJV="1.82.0"
DESC="Low level core library"
UPST="https://github.com/GNOME/glib.git"
VCMD="git ls-remote --tags --refs '$UPST' | grep -B1 'EAZEL-NAUTILUS-MS-AUG07' | head -n1 | sed 's@.*/@@'"

SOURCE="https://download.gnome.org/sources/glib/${VERS%.*}/glib-$VERS.tar.xz"
EXTRA=(
    "https://download.gnome.org/sources/gobject-introspection/${GOBJV%.*}/gobject-introspection-$GOBJV.tar.xz"
)

2b() {

with meson ninja

# if [ -e /usr/include/glib-2.0 ]; then
#     rm -rf /usr/include/glib-2.0.old &&
#     mv -vf /usr/include/glib-2.0{,.old}
# fi

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

ms "${_cfg_opts[@]}"
nj
ni

# cp -av {"$D",}/usr/include/glib-2.0 # annoying but painless

# ty @seal331
mkdir -pv "$BLD"/pkgconfigtmp
cp -vf {"$PORT","$BLD"/pkgconfigtmp}/glib-2.0.pc
sed "1s@prefix=@prefix=$D@" -i "$BLD"/pkgconfigtmp/glib-2.0.pc
tar xf "$SRC"/gobject-introspection-$GOBJV.tar.xz

export PKG_CONFIG_PATH="$BLD/pkgconfigtmp"
meson setup gobject-introspection-$GOBJV gi-build \
    --prefix=/usr --buildtype=release
nj -C gi-build
ni -C gi-build

unset PKG_CONFIG_PATH
meson configure -D introspection=enabled
nj
ni

m32=1
cd ..
ms "${_cfg_opts[@]}" \
    --cross-file lib32

nj
ni

# rm -rf /usr/include/glib-2.0
# mv -vf /usr/include/glib-2.0{.old,}

}
