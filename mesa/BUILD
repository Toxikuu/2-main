NAME="mesa"
VERS="25.0.0"
DESC="Graphics software bundle (OpenGL, Vulkan, etc.)"
CATG="graphics"
UPST="https://gitlab.freedesktop.org/mesa/mesa.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'mesa-[0-9]' | cut -d- -f2 | grep -v '[a-z]' | sort -V | tail -n1"
DEPS=(
    "xorg/@lib"
    "libdrm"
    "mako"
    "pyyaml"
    "glslang"
    "meson"
    "wayland-protocols"
)

SOURCE="https://mesa.freedesktop.org/archive/mesa-$VERS.tar.xz"
EXTRA=()

2b() {

with meson ninja

_cfg_opts=(
    -D osmesa=true
    -D platforms=x11,wayland
    -D gallium-drivers=auto
    -D vulkan-drivers=auto
    -D valgrind=disabled
    -D video-codecs=all
    -D libunwind=disabled
)

ms "${_cfg_opts[@]}"
nj
ni

mkdir -pv "$D/usr/share/doc"
cp -av ../docs -T "$D"/usr/share/doc/mesa

cd ..
m32=1

ms --cross-file lib32 "${_cfg_opts[@]}"

sed -i 's/\/usr\/lib\//\/usr\/lib32\//g' ./build.ninja
BINDGEN_EXTRA_CLANG_ARGS="-m32" nj
ni

# copy over vulkan stuff if it was compiled
[[ -d "$BLD/32DEST/usr/share/vulkan" ]] && {
    cp -av "$BLD/32DEST/usr/share/vulkan" "$D/usr/share"
}

}
