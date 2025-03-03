NAME="iana-etc"
VERS="20250225"
CATG="core"
DESC="The Internet Assigned Numbers Authority's services and protocols"
UPST="https://github.com/Mic92/iana-etc.git"
VCMD="git ls-remote --tags '$UPST' | sed 's@.*/@@' | sort -V | grep -B1 untagged | head -n1"

SOURCE="https://github.com/Mic92/iana-etc/releases/download/$VERS/iana-etc-$VERS.tar.gz"
EXTRA=()

2b() {

install -vDm644 -t "$D"/etc services protocols

}