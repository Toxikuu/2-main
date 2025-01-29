NAME="file"
VERS="5.46"
DESC="Utility for determining file type"
UPST="https://github.com/file/file.git"
VCMD="git ls-remote --tags '$UPST' | sed 's:.*/::' | sort -V | tail -n2 | head -n1 | sed 's/FILE//' | sed 's/_/./g'"

SOURCE="https://astron.com/pub/file/file-$VERS.tar.gz"
EXTRA=()

2b() {

b-cfg
b-make
b-mi

b-make distclean

b-32cfg
b-make
b-32mi

}

#d fixed .uv.toml
