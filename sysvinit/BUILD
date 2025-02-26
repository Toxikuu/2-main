NAME="sysvinit"
VERS="3.14"
CATG="core"
DESC="A simple init system"
UPST="https://github.com/slicer69/sysvinit.git"

SOURCE="https://github.com/slicer69/sysvinit/releases/download/$VERS/sysvinit-$VERS.tar.xz"

2b() {

tpatch "$PORT"/consolidated.patch
mk
mk ROOT="$D" install

mkdir -pv "$D"/etc
cp -av "$PORT"/etc "$D"

}
