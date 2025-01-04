NAME="sysvinit"
VERS="3.12"
DESC="A simple init system"
UPST="https://github.com/slicer69/sysvinit.git"

SOURCE="https://github.com/slicer69/sysvinit/releases/download/$VERS/sysvinit-$VERS.tar.xz"
EXTRA=(
    "https://www.linuxfromscratch.org/patches/lfs/development/sysvinit-$VERS-consolidated-1.patch"
)

2b() {

b-patch "$SRC"/sysvinit-$VERS-consolidated-1.patch
b-make
b-mi

}
