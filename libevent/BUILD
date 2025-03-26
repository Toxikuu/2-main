NAME="libevent"
VERS="2.1.12"
DESC="Asynchronous event library"
CATG="lib"
UPST="https://github.com/libevent/libevent.git"
VCMD="git ls-remote --tags --refs $UPST | sed 's@.*/@@' | grep 'release-.\\+-stable' | cut -d- -f2 | sort -V | tail -n1"
DEPS=()

SOURCE="https://github.com/libevent/libevent/releases/download/release-$VERS-stable/libevent-$VERS-stable.tar.gz"
EXTRA=()

2b() {

sed -i 's/python/&3/' event_rpcgen.py

cfg
mk
mi

}
