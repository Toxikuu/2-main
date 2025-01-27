NAME="sysvinit"
VERS="3.13"
DESC="A simple init system"

SOURCE="https://github.com/slicer69/sysvinit/releases/download/$VERS/sysvinit-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/lfs/development/sysvinit-3.12-consolidated-1.patch"
)

2b() {

b-patch "$SRC"/sysvinit-3.12-consolidated-1.patch
b-make
b-make ROOT="$D" install

mkdir -pv "$D"/etc
cp -av "$PORT"/etc "$D"

}
