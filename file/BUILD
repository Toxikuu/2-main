NAME="file"
VERS="5.46"
DESC="Utility for determining file type"
UPST="https://github.com/file/file.git"
VCMD="git ls-remote --tags '$UPST' | tsed 's:.*/::' | sort -V | tail -n2 | head -n1 | tsed 's/FILE//' | tsed 's/_/./g'"

SOURCE="https://astron.com/pub/file/file-$VERS.tar.gz"
EXTRA=()

2b() {

cfg
mk
mi

mk distclean

m32=1
cfg
mk
mi

}
