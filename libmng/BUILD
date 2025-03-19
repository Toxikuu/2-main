NAME="libmng"
VERS="2.0.3"
DESC="MNG/JNG reference library"
CATG="lib"
UPST=""  # no activity in 10 years and there's no git repo
DEPS=(
    "libjpeg-turbo"
    "little-cms"
)

SOURCE="https://downloads.sourceforge.net/libmng/libmng-$VERS.tar.xz"
EXTRA=()

2b() {

cfg
mk
mi

install -vdm755          "$D"/usr/share/doc/libmng
install -vm644 doc/*.txt "$D"/usr/share/doc/libmng

}
