NAME="libsndfile"
VERS="1.2.2"
DESC="Library of C routines for reading and writing files containing sampled audio data"
UPST="https://github.com/$NAME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -B1 'v1.0.28pre1' | head -n1"

SOURCE="https://github.com/$NAME/$NAME/releases/download/$VERS/$NAME-$VERS.tar.xz"
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
