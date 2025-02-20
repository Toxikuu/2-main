NAME="pcre2"
VERS="10.45"
DESC="A new generation of the Perl Compatible Regular Expression libraries"
UPST="https://github.com/PCRE2Project/pcre2.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -v RC | tail -n1"

SOURCE="https://github.com/PCRE2Project/pcre2/releases/download/pcre2-$VERS/pcre2-$VERS.tar.bz2"
EXTRA=()

2b() {

_cfg_opts=(
    --enable-unicode
    --enable-jit
    --enable-pcre2-16
    --enable-pcre2-32
    --enable-pcre2grep-libz
    --enable-pcre2grep-libbz2
    --enable-pcre2test-libreadline
)

cfg "${_cfg_opts[@]}"
mk
mi

mk distclean
m32=1

cfg "${_cfg_opts[@]}"
mk
mi

}
