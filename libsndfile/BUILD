NAME="libsndfile"
VERS="1.2.2"
DESC="Library of C routines for reading and writing files containing sampled audio data"
UPST="https://github.com/$NAME/$NAME.git"
VCMD="git ls-remote --tags --refs '$UPST' | sed 's@.*/@@' | grep -B1 'v1.0.28pre1' | head -n1"

SOURCE="https://github.com/$NAME/$NAME/releases/download/$VERS/$NAME-$VERS.tar.xz"
EXTRA=()

2b() {

DS=1 b-cfg
b-make
b-mi

b-make distclean
b-32cfg
b-make
b-32mi

}
