NAME="util-linux"
VERS="2.41"
CATG="core"
DESC="Miscellaneous utility prorgrams"
UPST="https://github.com/util-linux/util-linux.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Eiv 'start|rc|pre|real' | sort -V | tail -n1"

SOURCE="https://github.com/util-linux/util-linux/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

restore() {
    if [ -e /usr/bin/ncursesw6-config.tmp ]; then
        mv -v /usr/bin/ncursesw6-config{.tmp,}
    fi
}

restore

_cfg_opts=(
    --bindir=/usr/bin
    --runstatedir=/run
    --sbindir=/usr/sbin
    --disable-rpath
    --disable-chfn-chsh
    --disable-login
    --disable-nologin
    --disable-su
    --disable-setpriv
    --disable-runuser
    --disable-pylibmount
    --disable-liblastlog2
    --disable-minix
    --disable-rename # perl rename >>>>>>>>>
    --disable-more # less >>>>>>>>>
    --without-ncurses
    --without-econf
    --without-python
    --without-user
    --without-systemd
    --without-systemdsystemunitdir
    --with-gnu-ld
    --with-ncursesw
    --docdir=/usr/share/doc/util-linux
    ADJTIME_PATH=/var/lib/hwclock/adjtime
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
