NAME="bash"
VERS="5.2.37"
CATG="core shell"
DESC="The Bourne-Again Shell"
UPST="https://ftp.gnu.org/gnu/bash/?C=M;O=D"
VCMD="curl -s '$UPST' | grep bash- | grep -Ev -- '-beta|-alpha|-rc|diff|doc|\.sig|patches' | head -n1 | cut -d- -f2 | cut -dt -f1 | sed 's,.$,,'"

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
