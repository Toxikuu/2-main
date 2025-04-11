NAME="dex"
VERS="0.10.1"
DESC="Desktop entry execution utility"
CATG="utils"
UPST="https://github.com/jceb/dex.git"
DEPS=(
    "python"
)

SOURCE="https://github.com/jceb/dex/archive/refs/tags/$VERS.tar.gz"
EXTRA=()

2b() {

# don't built man pages since i don't package sphinx atm
sed '/sphinx-build/d' -i Makefile

mi PREFIX=/usr MANPREFIX=/usr/share/man
rm -vf "$D"/usr/share/doc/dex/LICENSE

}
