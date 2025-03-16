NAME="libev"
VERS="4.33"
DESC="Full-featured, high-performance loop/event model"
CATG="lib"
UPST="https://github.com/xorangekiller/libev-git.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | tail -n3 | head -n1 | cut -d- -f2 | sed 's/_/./g'"
DEPS=()

SOURCE="http://dist.schmorp.de/libev/Attic/libev-$VERS.tar.gz" # attic used for longevity
EXTRA=()

2b() {

cfg
mk
mi

# remove a header conflicting with libevent
rm -vf "$D"/usr/include/event.h

}
