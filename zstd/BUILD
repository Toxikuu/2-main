NAME="zstd"
VERS="1.5.7"
DESC="The zstandard compression algorithm"
UPST="https://github.com/facebook/zstd.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^v[0-9]+' | grep -v -- -kernel | tail -n1"

SOURCE="https://github.com/facebook/zstd/releases/download/v$VERS/zstd-$VERS.tar.gz"
EXTRA=()

2b() {

mk prefix=/usr
mi prefix=/usr

}
