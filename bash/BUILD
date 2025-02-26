NAME="bash"
VERS="5.2.37"
CATG="core"
DESC="The Bourne-Again Shell"
UPST="https://ftp.gnu.org/gnu/bash/?C=M;O=D"
VCMD=$(printf "curl -s '%s' | grep bash- | grep -Ev 'beta|alpha' | head -n1 | cut -d '\"' -f8 | cut -d- -f2 | cut -d. -f1-3" "$UPST")

SOURCE="https://ftp.gnu.org/gnu/bash/bash-$VERS.tar.gz"
EXTRA=()

2b() {

cfg \
    --without-bash-malloc \
    --with-installed-readline
mk
mi

}

2z() {

echo "To replace the current shell, run:" >&2
echo "exec /usr/bin/bash --login" >&2

}
