NAME="m4"
VERS="1.4.19"
DESC="Macro processor"

SOURCE="https://ftp.gnu.org/gnu/m4/m4-$VERS.tar.xz"
EXTRA=()

2b() {

# disable a bogus null pointer dereference warning that werrors the build
sed -i '/-Wnull-dereference/d' configure

DS=1 b-cfg
b-make
b-mi

}
