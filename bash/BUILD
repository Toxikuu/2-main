NAME="bash"
VERS="5.2.37"
DESC="The Bourne-Again Shell"

SOURCE="https://ftp.gnu.org/gnu/bash/bash-$VERS.tar.gz"
EXTRA=()

2b() {

DS=1 b-cfg \
    --without-bash-malloc \
    --with-installed-readline
b-make
b-mi

}

2z() {

echo "To replace the current shell, run:" >&2
echo "exec /usr/bin/bash --login" >&2

}
