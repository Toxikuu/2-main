NAME="lm_sensors"
nam="${NAME//_/-}"
VERS="3.6.0"
ver="${VERS//./-}"
DESC=""
CATG=""
UPST="https://github.com/$nam/$nam.git"
DEPS=(
    "bash"
    "glibc"
    "perl"
)

SOURCE="https://github.com/$nam/$nam/archive/V${ver}/$nam-${ver}.tar.gz"
EXTRA=()

2b() {

mk PREFIX=/usr BUILD_STATIC_LIB=0 MANDIR=/usr/share/man EXLDFLAGS=

}
