NAME="icu"
VERS="76.1"
DESC="International Components for Unicode"

SOURCE="https://github.com/unicode-org/icu/releases/download/release-${VERS//./-}/icu4c-${VERS//./_}-src.tgz"
EXTRA=()

2b() {

cd source

DS=1 b-cfg
b-make
b-mi

b-make clean

DS=1 b-32cfg
b-make
b-32mi

}
