NAME="opus"
VERS="1.5.2"
DESC="Lossy audio compression format, well suited to transmission"

SOURCE="https://github.com/xiph/opus/releases/download/v$VERS/opus-$VERS.tar.gz"
EXTRA=()

2b() {

mkdir -pv build
cd        build

CP=.. b-ms
b-ninja
b-ni

rm -rf *
CP=.. b-32ms
b-ninja
b-32ni

}
