NAME="libcap"
VERS="2.76"
CATG="core"
DESC="POSIX 1003.1e capabilities"
UPST="https://git.kernel.org/pub/scm/libs/libcap/libcap.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'libcap-korg-' | tail -n1 | cut -d- -f3"

SOURCE="https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-$VERS.tar.xz"
EXTRA=()

2b() {

sed -i '/install -m.*STA/d' libcap/Makefile

_mk_opts=(
    DYNAMIC=yes
    prefix=/usr
    -C libcap
)

mk "${_mk_opts[@]}"
mi lib=lib "${_mk_opts[@]}"

make distclean || true # flaky
m32=1

mk CC="gcc -m32 -march=i686" "${_mk_opts[@]}"
mi CC="gcc -m32 -march=i686" "${_mk_opts[@]}" lib=lib32

sed -e "s@^libdir=.*@libdir=/usr/lib32@" -i "$D"/usr/lib32/pkgconfig/lib{cap,psx}.pc
chmod -v 755 "$D"/usr/lib32/libcap.so.$VERS

}