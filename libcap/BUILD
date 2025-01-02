NAME="libcap"
VERS="2.73"
DESC="POSIX 1003.1e capabilities"
UPST="https://git.kernel.org/pub/scm/libs/libcap/libcap.git"

SOURCE="https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-$VERS.tar.xz"
EXTRA=()

# NOTE: these instructions do not install any binaries, just libraries
2b() {

sed -i '/install -m.*STA/d' libcap/Makefile

_mk_opts=(
DYNAMIC=yes
prefix=/usr
-C libcap
)

b-make "${_mk_opts[@]}"
b-mi lib=lib "${_mk_opts[@]}"

make distclean || true
b-make CC="gcc -m32 -march=i686" "${_mk_opts[@]}"
b-make CC="gcc -m32 -march=i686" lib=lib32 "${_mk_opts[@]}" DESTDIR="$PWD/32DEST" install

mkdir -pv D/usr/lib32
cp -Rv 32DEST/usr/lib32/* D/usr/lib32

sed -e "s@^libdir=.*@libdir=/usr/lib32@" -i /usr/lib32/pkgconfig/lib{cap,psx}.pc
chmod -v 755 D/usr/lib32/libcap.so.$VERS

}
