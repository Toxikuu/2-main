NAME="sysvinit"
VERS="3.14"
DESC="A simple init system"
UPST="https://github.com/slicer69/sysvinit.git"

SOURCE="https://github.com/slicer69/sysvinit/releases/download/$VERS/sysvinit-$VERS.tar.xz"

2b() {

b-patch "$PORT"/consolidated.patch
b-make
b-make ROOT="$D" install

mkdir -pv "$D"/etc
cp -av "$PORT"/etc "$D"

}

#d patch is now stored locally
