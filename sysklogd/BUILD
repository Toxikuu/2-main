NAME="sysklogd"
VERS="2.6.2"
DESC="Programs for logging system messages"
UPST="https://github.com/troglobit/sysklogd.git"

SOURCE="https://github.com/troglobit/sysklogd/releases/download/v$VERS/sysklogd-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg \
    --sysconfdir=/etc   \
    --runstatedir=/run  \
    --without-logger    \
    --docdir=/usr/share/doc/sysklogd-$VERS

b-make
b-mi

}
