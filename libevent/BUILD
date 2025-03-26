NAME="libevent"
VERS="2.1.12"
DESC="Asynchronous event library"
CATG="lib"
UPST="https://github.com/libevent/libevent.git"
DEPS=()

SOURCE="https://github.com/libevent/libevent/releases/download/release-$VERS-stable/libevent-$VERS-stable.tar.gz"
EXTRA=()

2b() {

sed -i 's/python/&3/' event_rpcgen.py

cfg
mk
mi

}
