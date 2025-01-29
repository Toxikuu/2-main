NAME="libtool"
VERS="2.5.4"
DESC="The GNU generic library support script"
UPST="https://git.savannah.gnu.org/libtool.git"

SOURCE="https://ftp.gnu.org/gnu/libtool/libtool-$VERS.tar.xz"
EXTRA=()

2b() {

DS=1 b-cfg
b-make
b-mi

b-make distclean

DS=1 b-32cfg
b-make
b-32mi

rm -vf "$D"/usr/lib{,32}/libltdl.a

}
