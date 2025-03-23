NAME="libconfig"
VERS="1.7.3"
DESC="C library for processing configuration files"
CATG="lib"
UPST="https://github.com/hyperrealm/libconfig.git"
DEPS=()

SOURCE="https://github.com/hyperrealm/libconfig/releases/download/v$VERS/libconfig-$VERS.tar.gz"
EXTRA=()

2b() {

autoreconf -fiv
cfg

sed -i -e 's/ -shared / -Wl,-O2,--as-needed\0/g' libtool

mk
mi

}
