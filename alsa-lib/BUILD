NAME="alsa-lib"
VERS="1.2.13"
DESC="ALSA library"

SOURCE="https://www.alsa-project.org/files/pub/lib/alsa-lib-$VERS.tar.bz2"
EXTRA=()

2b() {

DS=1 b-cfg
b-make
b-mi

b-make distclean

DS=1 b-32cfg
b-make
b-32mi


}
