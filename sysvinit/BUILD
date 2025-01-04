NAME="sysvinit"
VERS="3.13"
DESC="A simple init system"
UPST="https://github.com/slicer69/sysvinit.git"

SOURCE="https://github.com/slicer69/sysvinit/releases/download/$VERS/sysvinit-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/lfs/development/sysvinit-3.12-consolidated-1.patch"
)

2b() {

b-patch "$SRC"/sysvinit-3.12-consolidated-1.patch
b-make
b-mi

mkdir -pv D/etc
cp -vR "$PORT"/etc D/etc

}
