NAME="libvdpau-va-gl"
VERS="0.4.2"
DESC="VDPAU driver with OpenGL/VAAPI backend"
CATG="graphics"
UPST="https://github.com/i-rinat/$NAME.git"
DEPS=(
    "cmake"
    "libvdpau"
    "libva"
    "mesa"
)

SOURCE="https://github.com/i-rinat/$NAME/archive/v$VERS/$NAME-$VERS.tar.gz"
EXTRA=()

2b() {

with cmake ninja

cm
nj
ni

m32=1
cd ..

cm
nj
ni || true # the below line handles the failure
cp -av "$BLD"/32DEST/usr/lib/* "$D"/usr/lib32

mkdir -pv "$D/etc/profile.d"
echo "export VDPAU_DRIVER=va_gl" >> "$D/etc/profile.d/xorg.sh"

}

2z() {

export VDPAU_DRIVER=va_gl

}
