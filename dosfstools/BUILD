NAME="dosfstools"
VERS="4.2"
DESC="DOS filesystem utilities"
CATG="utils fs"
UPST="https://github.com/dosfstools/dosfstools.git"
DEPS=()

SOURCE="https://github.com/dosfstools/dosfstools/releases/download/v$VERS/dosfstools-$VERS.tar.gz"
EXTRA=()

KCFG=(
    "VFAT_FS=*/M"
)

2b() {

cfg --enable-compat-symlinks --mandir=/usr/share/man
mk
mi

}
