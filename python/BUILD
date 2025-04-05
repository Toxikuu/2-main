NAME="python"
VERS="3.13.2"
CATG="core lang"
DESC="The Python programming language"
UPST="https://github.com/python/cpython.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -Ev 'a|b|rc' | sort -V | tail -n1"
DEPS=(
    "mpdecimal"
    "expat"
    "libffi"
    "gdbm"
    "libxcrypt"
    "openssl"
    "zlib"
    "bzip2"
)

SOURCE="https://www.python.org/ftp/python/$VERS/Python-$VERS.tar.xz"
EXTRA=()

2b() {

# ensure system libraries are used
rm -r Modules/expat
rm -r Modules/_decimal/libmpdec

_cfg_opts=(
    --enable-shared

    # use system libraries
    --with-system-expat
    --with-system-libmpdec

    # optimizations
    --with-computed-gotos
    --with-lto=full
    --enable-optimizations

    # explicitly disable stuff
    --without-dtrace
    --without-valgrind
    --disable-test-modules
)

CFLAGS="${CFLAGS/-O2/-O3} -ffat-lto-objects"
cfg ${_cfg_opts[@]}
mk
mi

install -vDm644 "$PORT/pip.conf" "$D"/etc/pip.conf

# create symlinks that really should be default
ln -sv python3               "$D"/usr/bin/python
ln -sv python3-config        "$D"/usr/bin/python-config
ln -sv idle3                 "$D"/usr/bin/idle
ln -sv pydoc3                "$D"/usr/bin/pydoc
ln -sv python${VERS%.*}.1    "$D"/usr/share/man/man1/python.1

}
