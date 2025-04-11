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
sed '/man/d' -i Makefile

mi PREFIX=/usr
rm -vf "$D"/usr/share/doc/dex/LICENSE

}
