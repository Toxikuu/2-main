NAME="socat"
VERS="1.8.0.3"
DESC="Multipurpose relay tool"
CATG="util"
UPST="https://repo.or.cz/socat.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | cut -d- -f2- | grep -v '[a-Z]' | tail -n1"
DEPS=(
    "openssl"
    "readline"
)

SOURCE="http://www.dest-unreach.org/socat/download/socat-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

}
