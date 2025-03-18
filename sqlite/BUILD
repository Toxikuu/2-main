NAME="sqlite"
VERS="3.49.1"
DESC="Self-contained, serverless, zero-configuration, transactional SQL database engine"
CATG="db"
UPST="https://github.com/sqlite/sqlite.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep 'version-' | sort -V | tail -n1 | cut -d- -f2"
DEPS=()

SOURCE="https://github.com/sqlite/sqlite/archive/refs/tags/version-$VERS.tar.gz"
EXTRA=()

2b() {

# no abstraction because sqlite is being not cooperative
./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts{4,5} \
            CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1 \
                      -D SQLITE_ENABLE_UNLOCK_NOTIFY=1   \
                      -D SQLITE_ENABLE_DBSTAT_VTAB=1     \
                      -D SQLITE_SECURE_DELETE=1"        ||
die "Configure failed"

mk
mi

}
