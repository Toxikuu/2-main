NAME="which"
VERS="2.23"
DESC="A utility to show the full path of commands"
UPST="https://ftp.gnu.org/gnu/which/?C=M;O=D"
VCMD="curl -s '$UPST' | grep which- | head -n1 | cut -d- -f2 | cut -d. -f1-2"

SOURCE="https://ftp.gnu.org/gnu/which/which-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

}

#d fixed .uv.toml
