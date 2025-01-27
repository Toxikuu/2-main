NAME="pcre2"
VERS="10.44"
DESC="A new generation of the Perl Compatible Regular Expression libraries"

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

b-cfg "${_cfg_opts[@]}"
b-make
b-mi

b-make distclean

b-32cfg "${_cfg_opts[@]}"
b-make
b-32mi

}
