NAME="sqlite"
VERS="3.49.1"
DESC="Self-contained, serverless, zero-configuration, transactional SQL database engine"
CATG="db"
UPST="https://github.com/sqlite/sqlite.git"
DEPS=()

SOURCE="https://github.com/sqlite/sqlite/archive/refs/tags/version-$VERS.tar.gz"
EXTRA=()

2b() {


_cfg_opts=(
    --enable-fts{4,5} # support v3,4,5 for FTS

    # required by some applications
    CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1 \
              -D SQLITE_ENABLE_UNLOCK_NOTIFY=1   \
              -D SQLITE_ENABLE_DBSTAT_VTAB=1     \
              -D SQLITE_SECURE_DELETE=1"
)

cfg ${_cfg_opts[@]}
mk
mi

}
