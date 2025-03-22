NAME="mesa-utils"
VERS="9.0.0"
DESC="Essential Mesa utilities"
CATG="utils graphics"
UPST="https://gitlab.freedesktop.org/mesa/demos.git"
DEPS=(
    "libdrm"
    "libx11"
    "libxcb"
    "libxkbcommon"
    "vulkan-loader"
    "wayland"
    "wayland-protocols"
    "o^libglvnd"
)

SOURCE="https://archive.mesa3d.org/demos/mesa-demos-$VERS.tar.xz"
EXTRA=(
    "https://src.fedoraproject.org/rpms/mesa-demos/raw/f42/f/mesa-demos-system-data.patch"
)

2b() {

with meson

# https://src.fedoraproject.org/rpms/mesa-demos/blob/f42/f/mesa-demos-system-data.patch
tpatch "$SRC"/mesa-demos-system-data.patch

ms -D gles1=disabled -D with-system-data-files=true

meson configure --no-pager  # display configuration (may be useful in logs)
meson compile

install -vDm755 src/egl/opengl/\
{eglinfo,eglgears_wayland,eglgears_x11,eglkms,egltri_wayland,\
egltri_x11,peglgears,xeglgears,xeglthreads}     -t "$D/usr/bin/"

install -vDm755 src/egl/opengles2/\
{es2_info,es2gears_wayland,es2gears_x11,es2tri} -t "$D/usr/bin/"

install -vDm src/xdemos/{glxinfo,glxgears}      -t "$D/usr/bin/"
install -vDm src/vulkan/vkgears                 -t "$D/usr/bin/"

}
