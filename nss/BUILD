NAME="nss"
VERS="3.109"
DESC="Network Security Services"
UPST="https://github.com/nss-dev/nss.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -E '^NSS.+RTM$' | sed -e 's@NSS_@@' -e 's@_RTM@@' -e 's@_@.@g' | grep -Ev '[a-Z]+' | sort -V | tail -n1"

SOURCE="https://archive.mozilla.org/pub/security/nss/releases/NSS_${VERS//./_}_RTM/src/nss-$VERS.tar.gz"
EXTRA=(
    "https://github.com/glfs-book/glfs/raw/refs/heads/trunk/patches/nss/nss-standalone-1.patch"
)

2b() {

tpatch "$SRC"/nss-standalone-1.patch

_cfg_opts=(
    BUILD_OPT=1
    NSPR_INCLUDE_DIR=/usr/include/nspr
    USE_SYSTEM_ZLIB=1
    NSS_DISABLE_GTESTS=1
    ZLIB_LIBS=-lz
    NSS_ENABLE_WERROR=0
)

# TODO: Use trap, a cleanup function, and NOUSE instead of deletion
sqlite3 --version > /dev/null 2>&1 ||
if [ -f /usr/lib/libsqlite3.so ]; then
    rm -vf /usr/lib/libsqlite3.so
fi

cd nss

mk "${_cfg_opts[@]}" \
    $([ $(uname -m) = x86_64 ] && echo USE_64=1) \
    $([ -f /usr/lib/libsqlite3.so ] && echo NSS_USE_SYSTEM_SQLITE=1)

cd ../dist

mkdir -pv "$D"/usr/lib{,32}/pkgconfig "$D"/usr/{bin,include}

install -vm755 Linux*/lib/*.so              "$D"/usr/lib              &&
install -vm644 Linux*/lib/{*.chk,libcrmf.a} "$D"/usr/lib              &&
install -vm755 -d                           "$D"/usr/include/nss      &&
cp -v -RL {public,private}/nss/*            "$D"/usr/include/nss      &&
install -vm755 Linux*/bin/{certutil,nss-config,pk12util} "$D"/usr/bin &&
install -vm644 Linux*/lib/pkgconfig/nss.pc  "$D"/usr/lib/pkgconfig    ||
die "Install failed"

cd ../nss                                         &&
find -name "Linux*.OBJ" -type d -exec rm -rf {} + &&
rm -rf ../dist

sqlite3 --version > /dev/null 2>&1 ||
if [ -f /usr/lib32/libsqlite3.so ]; then
    rm -vf /usr/lib32/libsqlite3.so
fi

m32=1

mk "${_cfg_opts[@]}" \
    $([ -f /usr/lib32/libsqlite3.so ] && echo NSS_USE_SYSTEM_SQLITE=1)

cd ../dist

install -vm755 Linux*/lib/*.so              "$D"/usr/lib32            &&
install -vm644 Linux*/lib/{*.chk,libcrmf.a} "$D"/usr/lib32            &&
sed -i 's/lib/lib32/g' Linux*/lib/pkgconfig/nss.pc                 &&
install -vm644 Linux*/lib/pkgconfig/nss.pc  "$D"/usr/lib32/pkgconfig  ||
die "Install (m32) failed"

}