NAME="util-linux"
VERS="2.40.4"
DESC="Miscellaneous utility prorgrams"
UPST="https://github.com/util-linux/util-linux.git"

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
    --docdir=/usr/share/doc/util-linux
)

cfg --libdir=/usr/lib "${_cfg_opts[@]}"
mk
mi

mk distclean
m32=1

trap restore EXIT
mv -v /usr/bin/ncursesw6-config{,.tmp}

cfg --libdir=/usr/lib32 "${_cfg_opts[@]}"

restore

mk
mi

}
