NAME="util-linux"
VERS="2.40.2"
DESC="Miscellaneous utility prorgrams"
UPST="https://github.com/util-linux/util-linux.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev '[a-Z]$|r' | sort -V | tail -n1"

SOURCE="https://www.kernel.org/pub/linux/utils/util-linux/v${VERS%.*}/util-linux-$VERS.tar.xz"
EXTRA=()

2b() {

restore() {
    if [ -e /usr/bin/ncursesw6-config.tmp ]; then
        mv -v /usr/bin/ncursesw6-config{.tmp,}
    fi
}

restore

_cfg_opts=(
    --bindir=/usr/bin     \
    --runstatedir=/run    \
    --sbindir=/usr/sbin   \
    --disable-chfn-chsh   \
    --disable-login       \
    --disable-nologin     \
    --disable-su          \
    --disable-setpriv     \
    --disable-runuser     \
    --disable-pylibmount  \
    --disable-liblastlog2 \
    --without-python      \
    --without-systemd     \
    --without-systemdsystemunitdir        \
    ADJTIME_PATH=/var/lib/hwclock/adjtime \
    --docdir=/usr/share/doc/util-linux-$VERS
)

b-cfg "${_cfg_opts[@]}" --libdir=/usr/lib
b-make
b-mi

b-make distclean
trap restore EXIT
mv -v /usr/bin/ncursesw6-config{,.tmp}

b-32cfg "${_cfg_opts[@]}" --libdir=/usr/lib32
b-make
b-32mi
mv -v /usr/bin/ncursesw6-config{.tmp,}

}
