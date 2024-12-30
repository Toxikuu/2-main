NAME="m4"
VERS="1.4.19"
DESC="Macro processor"
UPST="https://git.savannah.gnu.org/git/m4.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | grep -B1 v1.5.89a | head -n1"

SOURCE="https://ftp.gnu.org/gnu/m4/m4-$VERS.tar.xz"
EXTRA=()

2b() {

# disable a bogus null pointer dereference warning that werrors the build
sed -i '/-Wnull-dereference/d' configure
./configure --prefix=/usr

make
make DESTDIR=$PWD/D install

}
