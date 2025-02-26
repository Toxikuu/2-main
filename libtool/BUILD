NAME="libtool"
VERS="2.5.4"
CATG="core"
DESC="The GNU generic library support script"
UPST="git://git.savannah.gnu.org/libtool.git"

SOURCE="https://ftp.gnu.org/gnu/libtool/libtool-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

mk distclean
m32=1

cfg
mk
mi

rm -vf "$D"/usr/lib{,32}/libltdl.a

}
