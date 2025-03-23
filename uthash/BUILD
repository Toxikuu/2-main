NAME="uthash"
VERS="2.3.0"
DESC="C macros for hash tables and more"
CATG="lib"
UPST="https://github.com/troydhanson/uthash.git"
DEPS=()

SOURCE="https://github.com/troydhanson/uthash/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

for h in src/*.h; do
  install -vDm644 $h -t "$D"/usr/include/
done

}
