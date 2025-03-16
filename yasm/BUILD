NAME="yasm"
VERS="1.3.0"
DESC="NASM rewrite supporting more syntaxes"
CATG=""
UPST="https://github.com/yasm/yasm.git"
DEPS=(
    "o^cython"
)

SOURCE="https://github.com/yasm/yasm/archive/refs/tags/v$VERS.tar.gz"
EXTRA=()

2b() {

# prevent compilation of windows-only programs
sed -i 's@) ytasm.*@)@' Makefile.in

cfg
mk
mi

}
