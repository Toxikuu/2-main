NAME="flex"
VERS="2.6.4"
DESC="Tool for generating text-scanning programs"

SOURCE="https://github.com/westes/flex/releases/download/v$VERS/flex-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

ln -sv flex "$D"/usr/bin/lex
ln -sv flex.1 "$D"/usr/share/man/man1/lex.1

}
